
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

$t = #calc.abs(n*100) / #drift_velocity$

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

$d = #electron_speed * #t_2$

#let d = electron_speed * t_2

$d = #d m$

Circumference of first bohr orbit in hydrogen = #circumference

#let rounds = d / circumference
Number of rounds = $d / "circumference"$ = $#d / #circumference$ = #rounds rounds

== (e)

TO DO


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
    plt.plot(generate(x0=0.5, alpha=1.5), label=r"$x_0 = 0.5, \alpha=1.5$")
    plt.plot(generate(x0=0.001, alpha=3.2), label=r"$x_0 = 0.001, \alpha=3.2$")

    plt.xlabel("Time")
    plt.ylabel("Population")
    plt.legend()

    plt.savefig("plot.png")
```

#figure(
  image("plot.png", height: 40%)
)
