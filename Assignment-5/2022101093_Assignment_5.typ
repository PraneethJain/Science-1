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