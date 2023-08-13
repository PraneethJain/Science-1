#align(center, text(17pt)[*Science-1*])
#align(center, text(16pt)[Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 2022010193])

= Question 1

#let n = 4
#let average_pace = 1.42
== (a)
$n approx #n$
== (b)
Average pace of a human is $v = 1.4 m/s$

Assuming the distance to travel is $d = #n * 100 = #calc.abs(n*100) m$

$v = d / t$

$#average_pace = #calc.abs(n*100) / t$

$t = #calc.abs(n*100) / #average_pace$

#let t = calc.round(100*n/average_pace)

$t approx #t s$

The time required is approximately 
#calc.floor(t/60) minutes and #calc.rem(t, 60) seconds

#let drift_velocity = 2.3 * calc.pow(10, -5)
== (c)
Assuming the drift velocity of an electron on average is #drift_velocity $m/s$

Assuming the distance to travel is $d = #n * 100 = #calc.abs(n*100) m$

$v = d / t$

$#drift_velocity = #calc.abs(n*100) / t$


#let t_2 = calc.round(100*n/drift_velocity)

$t approx #t_2 s$

The time required is approximately 
#calc.floor(t_2/60/60/24) days and #calc.rem(calc.floor(t_2/60/60), 24) hours


#let electron_speed = 2.18 * calc.pow(10, 6)
#let circumference = 3.322 * calc.pow(10, -10)
== (d)
Speed of electron in ground state of hydrogen atom = $#electron_speed m/s$

$v = d / t$

$#electron_speed = d / #t_2$

#let d = electron_speed * t_2

$d = #d m$

Circumference of first bohr orbit in hydrogen = #circumference

#let rounds = d / circumference
Number of rounds = $d / "circumference"$ = $#d / #circumference$ = #rounds rounds

== (e)
#let area = 15e-6
#let resistivity = 1.724e-8

Assuming standard copper wires with $rho = #resistivity "ohm m"$ and area $A = #area m^2$

#let resistance = calc.round(resistivity * (n * 100) / area, digits: 2)

$R = rho l / A$ = #resistance $ohm$

#let current = 5

Assuming a current of #current A
#let power = current*current*resistance

Power $P = I^2 R$ = #power W



#pagebreak()
= Question 2

== (i)

Consider a spring mass system performing SHM with total energy $E$

$"PE" + "KE" = "E"$

$1/2 k x^2 + 1/2 m v^2 = E$

This is an equation of ellipse. Varying total energy will result in concentric ellipses

#figure(
  image("SHM.png")
)

== (ii)

Consider a system with anharmonic oscillations with the following potential graph

#figure(
  image("AHM_1.png")
)

The phase space trajectories for each of the total energies would be

#figure(
  image("AHM_2.png")
)

#pagebreak()
= Question 3

The logistic map $x_(n+1) = alpha x_n (1 - x_n)$ is usually studied for the growth parameter, $alpha$, in the range $0 lt.eq alpha lt.eq 4$. This is because $forall alpha gt 4$, the values taken by $x$ diverge. For $alpha$ lying within the range, the logistic map yields very interesting results like converging to one value, or even converging to two values (oscillating between the two), and some phenomenon like period doubling can be observed. Due to such properties, it is usually studied within this range.

== Python code to plot logistic map

```python
import matplotlib.pyplot as plt


def step(x: float, alpha: float) -> float:
    return alpha * x * (1 - x)


def generate(x0: float, alpha: float, generations: int = 50) -> list[float]:
    result = [x0] * generations
    for i in range(1, generations):
        result[i] = step(result[i - 1], alpha)
    return result


if __name__ == "__main__":
    plt.plot(generate(x0=0.1, alpha=0.8), label=r"$x_0 = 0.1, \alpha=0.8$")
    plt.plot(generate(x0=0.1, alpha=1.5), label=r"$x_0 = 0.1, \alpha=1.5$")
    plt.plot(generate(x0=0.5, alpha=1.5), label=r"$x_0 = 0.5, \alpha=1.5$")
    plt.plot(generate(x0=0.5, alpha=0.8), label=r"$x_0 = 0.5, \alpha=0.8$")
    plt.plot(generate(x0=0.001, alpha=3.2), label=r"$x_0 = 0.001, \alpha=3.2$")

    plt.xlabel("Time")
    plt.ylabel("Population")
    plt.legend()

    plt.savefig("plot.png")
```

#figure(
  image("plot.png", height: 40%)
)

#pagebreak()
= Question 4

$ P(N|n) = binom(N, n) p^n q^(N-n) "where" p+q=1, p>=0, q>=0 $

$ P(N|n) = N! / (n!(N-n)!) p^n q^(N-n) $

$ ln(P(N|n)) = ln(N!) - ln(n!) - ln((N-n)!) + n ln(p) + (N-n) ln(q) $

Using Stringling approximation ($ln(N!) = N ln(N) - N$)

$ ln(P(N|n)) approx N ln(N) - N - (n ln(n) - n) - ((N-n) ln(N-n) - (N-n)) + n ln(p) + (N-n) ln(q) $
$ ln(P(N|n)) = N ln(N) - N - n ln(n) + n - (N-n) ln(N-n) + (N-n) + n ln(p) + (N-n) ln(q) $
$ ln(P(N|n)) = N ln(N) - n ln(n) - (N-n) ln(N-n) + n ln(p) + (N-n) ln(q) $
Let $ln(P(N|x)) = f(x) $
$ f(x) = N ln(N) - x ln(x) - (N-x) ln(N-x) + x ln(p) + (N-x) ln(q)$
$ f^1 (x) = -1 - ln(x) +N/(N-x) - x/(N-x) +ln(N-x) + ln(p) - ln(q) $
$ f^1 (x) = ln(N-x) - ln(x) + ln(p/q) $

Consider maxima at $x=x_0$

$ f^1 (x_0) = ln(N-x_0) - ln(x_0) + ln(p/q) $
$ 0 = ln(N/x_0 - 1) + ln(p/q) $
$ ln(q/p) = ln(N/x_0 - 1) $
$ x_0 = N p/(p+q) $
$ x_0 = N p $
$ f(x_0) = N ln(N) - N p ln(N p) - N q ln(N q) + N p ln(p) + N q ln(q) $
$ f(x_0) = N ln((N p^p q^q)/ (N^p p^p N^q q^q)) $
$ f(x_0) = N ln (N / N^(p+q)) $
$ f(x_0) = 0 $
$ f^2 (x) = -1/(N-x) - 1/x $
$ f^2 (x) = - N/(N-x) $
$ f^2 (x_0) = - N/(N - N p) $
$ f^2 (x_0) = - 1/q $

Expanding $f(x)$ around $x_0$ using taylor expansion

$ f(x) approx f(x_0) + (x-x_0)f^1(x) bar.v_(x=x_0) + 1/2 (x-x_0)^2 f^2(x) bar.v_(x=x_0) $
$ f(x) = 0 + (x-N p)(0) + 1/2 (x - N p)^2(-1/q) $
$ ln(P(N|n)) = -1/(2 q) (n - N p)^2 $
$ P(N|n) = e^(-1/(2 q) (n - N p)^2) $
$ P(N|n) = c_1 e^(-c_2 (n - N p)^2) $

Therefore, as N grows large, the binomial distribution tends to the Gaussian distribution.
QED
