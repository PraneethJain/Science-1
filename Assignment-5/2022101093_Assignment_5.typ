#align(center, text(17pt)[*Science-1*])
#align(center, text(16pt)[Assignment-5])
#align(center, text(13pt)[Moida Praneeth Jain, 2022010193])

#let ket(x) = $lr(|#x angle.r)$

= Question 1

$ sigma_1 = mat(0, 1; 1, 0), sigma_2 = mat(0, -i; i, 0), sigma_3 = mat(1, 0; 0, -1) $

== (a)
$ [sigma_1, sigma_2] = sigma_1 sigma_2 - sigma_2 sigma_1 $
$ [sigma_1, sigma_2] = mat(i, 0; 0, -i) - mat(-i, 0; 0, i) $
$ [sigma_1, sigma_2] = mat(2i, 0; 0, -2i) $
$ [sigma_2, sigma_1] = mat(-2i, 0; 0, 2i) $
Therefore, $sigma_1$ and $sigma_2$ do not commute.

$ [sigma_2, sigma_3] = sigma_2 sigma_3 - sigma_3 sigma_2 $
$ [sigma_2, sigma_3] = mat(0, i; i, 0) - mat(0, -i; -i, 0) $
$ [sigma_2, sigma_3] = mat(0, 2i; 2i, 0) $
$ [sigma_3, sigma_2] = mat(0, -2i; -2i, 0) $
Therefore, $sigma_2$ and $sigma_3$ do not commute.

$ [sigma_1, sigma_3] = sigma_1 sigma_3 - sigma_3 sigma_1 $
$ [sigma_1, sigma_3] = mat(0, -1; 1, 0) - mat(0, 1; -1, 0) $
$ [sigma_1, sigma_3] = mat(0, -2; 2, 0) $
$ [sigma_3, sigma_1] = mat(0, 2; -2, 0) $
Therefore, $sigma_1$ and $sigma_3$ do not commute.

Note that trivially, $sigma_1$ commutes with $sigma_1$, $sigma_2$ commutes with $sigma_2$ and $sigma_3$ commutes with $sigma_3$ ($[sigma_i, sigma_i] = bold(0)$)

== (b)
For $sigma_1$, $det(sigma_1 - lambda I) = 0$
$ det mat(-lambda, 1; 1, -lambda) = 0 $
$ lambda^2 - 1 = 0 $
$ lambda_1 = -1, lambda_2 = 1 $

$ sigma_1 x_1 = lambda_1 x_1 $
$ mat(0, 1; 1, 0) mat(x_11; x_12)  = mat(-x_11; -x_12) $
$ x_12 = -x_11 $
$ x_1 = mat(alpha; -alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_1 | x_1 angle.r) = sqrt(2alpha)$
$ ket(x_1) = mat(1/sqrt(2); -1/sqrt(2)) $

$ sigma_1 x_2 = lambda_2 x_2 $
$ mat(0, 1; 1, 0) mat(x_21; x_22)  = mat(x_21; x_22) $
$ x_22 = x_21 $
$ x_2 = mat(alpha; alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_2|x_2 angle.r) = sqrt(2alpha)$
$ ket(x_2) = mat(1/sqrt(2); 1/sqrt(2)) $

$therefore$ for $sigma_1$, eigenvalues are $-1, 1$, and corresponding orthogonal eigenvectors are $mat(alpha; -alpha), mat(beta; beta)$, which upon normalizing give $mat(1/sqrt(2); -1/sqrt(2)), mat(1/sqrt(2); 1/sqrt(2))$.

For $sigma_2$, $det(sigma_2 - lambda I) = 0$
$ det mat(-lambda, -i; i, -lambda) = 0 $
$ lambda^2 - 1 = 0 $
$ lambda_1 = -1, lambda_2 = 1 $

$ sigma_2 x_1 = lambda_1 x_1 $
$ mat(0, -i; i, 0) mat(x_11; x_12)  = mat(-x_11; -x_12) $
$ x_12 = -i x_11 $
$ x_1 = mat(alpha; -i alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_1 | x_1 angle.r) = sqrt(2alpha)$
$ ket(x_1) = mat(1/sqrt(2); -i/sqrt(2)) $

$ sigma_2 x_2 = lambda_2 x_2 $
$ mat(0, -i; i, 0) mat(x_21; x_22) = mat(x_21; x_22) $
$ x_22 = i x_21 $
$ x_2 = mat(alpha; i alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_2 | x_2 angle.r) = sqrt(2alpha)$
$ ket(x_2) = mat(1/sqrt(2); i / sqrt(2)) $

$therefore$ for $sigma_2$, eigenvalues are $-1, 1$, and corresponding orthogonal eigenvectors are $mat(alpha; -i alpha), mat(beta; i beta)$, which upon normalizing give $mat(1/sqrt(2); -i/sqrt(2)), mat(1/sqrt(2); i/sqrt(2))$.

For $sigma_3$, $det(sigma_3 - lambda I) = 0$
$ det mat(1 - lambda, 0; 0, -1 - lambda) = 0 $
$ lambda^2 - 1 = 0 $
$ lambda_1 = -1, lambda_2 = 1 $

$ sigma_3 x_1 = lambda_1 x_1 $
$ mat(1, 0; 0, -1) mat(x_11; x_12)  = mat(-x_11; -x_12) $
$ x_11 = 0 $
$ x_1 = mat(0; alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_1 | x_1 angle.r) = alpha$
$ ket(x_1) = mat(0; 1) $

$ sigma_3 x_2 = lambda_2 x_2 $
$ mat(1, 0; 0, -1) mat(x_21; x_22) = mat(x_21; x_22) $
$ x_22 = 0 $
$ x_2 = mat(alpha; 0) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_2 | x_2 angle.r) = alpha$
$ ket(x_2) = mat(1; 0) $

$therefore$ for $sigma_3$, eigenvalues are $-1, 1$, and corresponding orthogonal eigenvectors are $mat(0; alpha), mat(beta; 0)$, which upon normalizing give $mat(0; 1), mat(1; 0)$.

== (c)
Since $ket(phi) = sum_i c_i ket(lambda_i), therefore P(ket(lambda_i)) = |c_i|^2$

$P(hat(A))$ in $ket(phi)$ is $|angle.l x_1| phi angle.r|^2$ for state $ket(x_1)$

Here, we consider the eigenstate of $sigma_2$ $ phi = mat(1/sqrt(2); i/sqrt(2)) $

$ P(sigma_1) = cases(
  |angle.l x_1| phi angle.r|^2 " for state" ket(x_1),
  |angle.l x_2| phi angle.r|^2 " for state" ket(x_2),
) $

$ P(sigma_1) = cases(
  |mat(1/sqrt(2), -1/sqrt(2)) * mat(1/sqrt(2); i/sqrt(2))|^2 " for state" ket(x_1),
  |mat(1/sqrt(2), 1/sqrt(2)) * mat(1/sqrt(2); i/sqrt(2))|^2 " for state" ket(x_2),
) $

$ P(sigma_1) = cases(
  |(1-i)/2|^2 " for state" ket(x_1),
  |(1+i)/2|^2 " for state" ket(x_2),
) $

$ P(sigma_1) = cases(
  (1/sqrt(2))^2 " for state" ket(x_1),
  (1/sqrt(2))^2 " for state" ket(x_2),
) $

$ P(sigma_1) = cases(
  1/2 " for state" ket(x_1),
  1/2 " for state" ket(x_2),
) $

$ P(sigma_3) = cases(
  |angle.l x_1| phi angle.r|^2 " for state" ket(x_1),
  |angle.l x_2| phi angle.r|^2 " for state" ket(x_2),
) $

$ P(sigma_3) = cases(
  |mat(0, 1) * mat(1/sqrt(2); i/sqrt(2))|^2 " for state" ket(x_1),
  |mat(1, 0) * mat(1/sqrt(2); i/sqrt(2))|^2 " for state" ket(x_2),
) $

$ P(sigma_3) = cases(
  (1/sqrt(2))^2 " for state" ket(x_1),
  (1/sqrt(2))^2 " for state" ket(x_2),
) $

$ P(sigma_3) = cases(
  1/2 " for state" ket(x_1),
  1/2 " for state" ket(x_2),
) $

== (d)
For $Delta sigma_1$
$ Delta sigma_1^2 = angle.l sigma_1^2 angle.r - angle.l sigma_1 angle.r ^ 2 $
$ Delta sigma_1^2 = angle.l phi|sigma_1^2|phi  angle.r - angle.l phi|sigma_1|phi angle.r ^ 2 $
$ Delta sigma_1^2 = mat(1/sqrt(2), -i/sqrt(2))*mat(0, 1; 1, 0)*mat(0, 1; 1, 0)*mat(1/sqrt(2); i/sqrt(2)) - (mat(1/sqrt(2), -i/sqrt(2))*mat(0, 1; 1, 0)*mat(1/sqrt(2); i/sqrt(2))) ^ 2 $
$ Delta sigma_1^2 = 1 - 0 $
$ Delta sigma_1^2 = 1 $

For $Delta sigma_3$
$ Delta sigma_3^2 = angle.l sigma_3^2 angle.r - angle.l sigma_3 angle.r ^ 2 $
$ Delta sigma_3^2 = angle.l phi|sigma_3^2|phi angle.r - angle.l phi|sigma_3|phi angle.r ^ 2 $
$ Delta sigma_3^2 = mat(1/sqrt(2), -i/sqrt(2))*mat(1, 0; 0, -1)*mat(1, 0; 0, -1)*mat(1/sqrt(2); i/sqrt(2)) - (mat(1/sqrt(2), -i/sqrt(2))*mat(1, 0; 0, -1)*mat(1/sqrt(2); i/sqrt(2))) ^ 2 $
$ Delta sigma_3^2 = 1 - 0 $
$ Delta sigma_3^2 = 1 $

So, the uncertainty $Delta sigma_1 = 1, Delta sigma_3 = 1, Delta sigma_1 Delta sigma_3 = 1$.

According to the uncertainty principle
$ Delta sigma_1 Delta sigma_3 >= 1/2 |angle.l [sigma_1, sigma_3] angle.r| $
$ Delta sigma_1 Delta sigma_3  >= 1/2 |angle.l phi|sigma_1 sigma_3|phi angle.r| $
$ Delta sigma_1 Delta sigma_3  >= 1/2 |mat(1/sqrt(2), -i/sqrt(2)) * mat(0, 2; -2, 0) * mat(1/sqrt(2); i / sqrt(2))| $
$ Delta sigma_1 Delta sigma_3  >= 1/2 |2i| $
$ Delta sigma_1 Delta sigma_3  >= 1 $

These are the corresponding uncertainty relations.

= Question 2
$ V(x) = cases(
  0 " for" 0 < x < L,
  infinity " for" x <= 0 " or" x >= L
) $

$ psi = 1/sqrt(2) ket(phi_1) + 1/sqrt(2) ket(phi_2) $

We use the time independent Schrödinger equation
$ -planck.reduce^2/(2m) d/(d x^2) psi(x) + V(x) psi(x) = E psi(x) $
For $x <= 0$ or $x >= L$, we have
$ -planck.reduce^2/(2m) d/(d x^2) psi(x) + (infinity) psi(x) = E psi(x) $
which implies $psi(x) = 0  " " forall x in.not (0, L) $

For regions inside the wall, we have
$ -planck.reduce^2/(2m) d/(d x^2) psi(x) + 0 * psi(x) = E psi(x) $
$ -planck.reduce^2/(2m) d/(d x^2) psi(x) = E psi(x) $
$ d/(d x^2) psi(x) = -(2 m E)/planck.reduce^2 psi(x) $
We know the general solution to this differential equation is
$ psi(x) = A sin(k x) + B cos(k x) " where " k = sqrt((2 m E)/planck.reduce^2) $
At $x = 0$
$ psi(0) = A sin(0) + B cos(0) $
$ B = 0 $
At $x = L$
$ psi(L) = A sin(k L) + 0 cos (k L) $
$ 0 = sin(k L) $
$ k = (n pi)/ L $
$ sqrt((2 m E)/planck.reduce^2) = (n pi)/ L $
$ (2 m E)/planck.reduce^2 = (n^2 pi^2)/ L^2 $
$ E = n^2 (pi^2 planck.reduce^2)/(2 m L^2) $
The first two lowest energies are $E_1 = (pi^2 planck.reduce^2)/(2 m L^2), E_2 = (2 pi^2 planck.reduce^2)/(m L^2)$

Since the total probability of the particle existing at any position is $1$
$ integral_0^L psi^2(x)d x = 1 $
$ integral_0^L A^2 sin^2(k x) d x = 1 $
$ integral_0^L A^2 sin^2((n pi x)/ L) d x = 1 $
$ A^2 L / 2 = 1 $
$ A = sqrt(2 / L) $

Now, we know that
$ ket(psi(x, t)) = 1/sqrt(2) e^(-i E_1 t) ket(phi_1) + 1/sqrt(2) e^(-i E_2 t) ket(phi_2) $
$ ket(psi(x, t)) = 1/sqrt(L) e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  1/sqrt(L) e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L) $

== (a)
The total energy (Hamiltonian) operator is given by
$ H =  -planck.reduce^2/(2m) diff^2/(diff x^2) + V(x) $
We consider only the region between the walls, as outside, the probability is $0$.
$ H = -planck.reduce^2/(2m) diff^2/(diff x^2) $

Average energy $= angle.l H angle.r = angle.l psi|H|psi angle.r$
$ angle.l H angle.r = integral_0^L psi^dagger H psi d x $
$ angle.l H angle.r = integral_0^L 1/sqrt(L)(e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))(-planck.reduce^2/(2m) diff^2/(diff x^2)1/sqrt(L)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))) d x $

$ angle.l H angle.r = -(planck.reduce^2)/(2 m L) integral_0^L (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L) H psi)(diff^2/(diff x^2)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))) d x $

$ angle.l H angle.r = -(planck.reduce^2)/(2 m L) integral_0^L (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L) H psi)(- pi^2/L^2 e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) - 4 pi^2/L^2 e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L)) d x $

$ angle.l H angle.r = (planck.reduce^2 pi^2)/(2 m L^3) integral_0^L (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L) H psi)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + 4e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L)) d x $

$ angle.l H angle.r = (planck.reduce^2 pi^2)/(2 m L^3) integral_0^L (sin^2((pi x)/ L) + 4 sin^2((2 pi x)/ L) + 4 e^(- i (3 pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/L) sin((2 pi x)/ L) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) sin((2 pi x)/ L)) d x $

$ angle.l H angle.r = (planck.reduce^2 pi^2)/(2 m L^3) integral_0^L (sin^2((pi x)/ L) + 4 sin^2((2 pi x)/ L) + (e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(- i (3 pi^2 planck.reduce^2)/(2 m L^2) t))sin((pi x)/L) sin((2 pi x)/ L)) d x $

$ angle.l H angle.r = (planck.reduce^2 pi^2)/(2 m L^3)(L/2 + 2L + integral_0^L (e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(- i (3 pi^2 planck.reduce^2)/(2 m L^2) t))sin((pi x)/L) sin((2 pi x)/ L) d x)  $

$ angle.l H angle.r = (planck.reduce^2 pi^2)/(2 m L^3)((5 L) / 2 + (e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(- i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) * 0)  $

$ angle.l H angle.r = (planck.reduce^2 pi^2)/(2 m L^3)((5 L) / 2) $
$ angle.l H angle.r = (5 planck.reduce^2 pi^2)/(4 m L^2) $

Variance $= sigma_H^2 = angle.l H^2 angle.r - angle.l H angle.r^2$

TO DO

== (b)
$ ket(psi(x, t)) = 1/sqrt(L) e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  1/sqrt(L) e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L) $
$ P(x=L/2, t=0) = |psi(x=L/2, t=0)|^2 $
$ P(x=L/2, t=0) = |(sin(pi/2) + sin(pi))/sqrt(L)|^2 $
$ P(x=L/2, t=0) = |(1 + 0)/sqrt(L)|^2 $
$ P(x=L/2, t=0) = 1/L $

== (c)
Average $x$ $= angle.l x angle.r = angle.l psi|x|psi angle.r$
$ angle.l x angle.r = integral_0^L psi^dagger x psi d x $
$ angle.l x angle.r = integral_0^L 1/sqrt(L)(e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))( x 1/sqrt(L)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))) d x $

$ angle.l x angle.r = 1/L integral_0^L x (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L)) (e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L)) d x $

$ angle.l x angle.r = 1/L integral_0^L x (sin^2((pi x)/L) + sin^2((2 pi x)/L) + (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) sin((pi x)/L) sin((2 pi x)/ L)) d x $

$ angle.l x angle.r = 1/L (1/2 - 8/(9 pi^2) (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t)))L^2 $

$ angle.l x angle.r = L/2 - (8 L)/(9 pi^2) (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) $

At time $t=0$, $ angle.l x angle.r_(t=0) = L(1/2 - 16/(9 pi^2)) $

We find the average second moment
$ angle.l x^2 angle.r = integral_0^L psi^dagger x^2 psi d x $
$ angle.l x^2 angle.r = integral_0^L 1/sqrt(L)(e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))( x^2 1/sqrt(L)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))) d x $

$ angle.l x^2 angle.r = 1/L integral_0^L x^2 (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L)) (e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L)) d x $

$ angle.l x^2 angle.r = 1/L integral_0^L x^2 (sin^2((pi x)/L) + sin^2((2 pi x)/L) + (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) sin((pi x)/L) sin((2 pi x)/ L)) d x $

$ angle.l x^2 angle.r = 1/L (1/3 - 5/(16 pi^2) - 8/(9 pi^2) (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t))) L^3 $

$ angle.l x^2 angle.r = L^2 (1/3 - 5/(16 pi^2) - 8/(9 pi^2) (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t))) $

Now, we can find the variance
$ sigma_x^2 = angle.l x^2 angle.r - angle.l x angle.r^2 $

$ sigma_x^2 = L^2 (1/3 - 5/(16 pi^2) - 8/(9 pi^2) (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t))) - L^2(1/4 + 64/(81 pi^4)(e^(-i (3 pi^2 planck.reduce^2)/(m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(m L^2) t) + 2) - 8/(9 pi^2) (e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t))) $

$ sigma_x^2 = L^2 (1/12 - 5/(16 pi^2) - 64/(81 pi^4)(e^(-i (3 pi^2 planck.reduce^2)/(m L^2) t) + e^(i (3 pi^2 planck.reduce^2)/(m L^2) t) + 2)) $

At time t = 0,
$ (sigma_x^2)_(t=0) = L^2(1/12 - 5/(16 pi^2) - 256 / (81 pi^4)) $

== (d)
The momentum operator is given by
$ hat(p) =  -i planck.reduce diff / (diff x) $

Average momentum $= angle.l hat(p) angle.r = angle.l psi|hat(p)|psi angle.r$
$ angle.l hat(p) angle.r = integral_0^L 1/sqrt(L)(e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))(-i planck.reduce diff/(diff x)1/sqrt(L)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))) d x $

$ angle.l hat(p) angle.r = -(i planck.reduce)/L integral_0^L (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))(diff/(diff x)(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) + e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))) d x $

$ angle.l hat(p) angle.r = -(i planck.reduce)/L integral_0^L (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))(pi/L e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) cos((pi x)/ L) + (2 pi)/L e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) cos((2 pi x)/ L)) d x $

$ angle.l hat(p) angle.r = -(i planck.reduce pi)/L^2 integral_0^L (e^(i (pi^2 planck.reduce^2)/(2 m L^2) t) sin((pi x)/ L) +  e^(i (2 pi^2 planck.reduce^2)/(m L^2) t) sin((2 pi x)/ L))(e^(-i (pi^2 planck.reduce^2)/(2 m L^2) t) cos((pi x)/ L) + 2 e^(-i (2 pi^2 planck.reduce^2)/(m L^2) t) cos((2 pi x)/ L)) d x $

$ angle.l hat(p) angle.r = -(i planck.reduce pi)/L^2 integral_0^L (sin((pi x)/L) cos((pi x)/L) + 2 sin((2 pi x)/L) cos((2 pi x)/L) + \ 2 sin((pi x)/L) cos((2 pi x)/ L) e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t) + sin((2 pi x)/L) cos((pi x)/L) e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) d x $
$ angle.l hat(p) angle.r = - (i h pi)/(L^2) ((4 L) / (3 pi) (e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t) - e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) ) $

$ angle.l hat(p) angle.r = - (4 i h)/(3 L) (e^(i (3 pi^2 planck.reduce^2)/(2 m L^2) t) - e^(-i (3 pi^2 planck.reduce^2)/(2 m L^2) t)) $

At time t = 0,
$ angle.l hat(p) angle.r_(t = 0) = 0 $