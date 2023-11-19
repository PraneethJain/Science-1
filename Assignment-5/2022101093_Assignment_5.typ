#align(center, text(17pt)[*Science-1*])
#align(center, text(16pt)[Assignment-1])
#align(center, text(13pt)[Moida Praneeth Jain, 2022010193])

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
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_1 bar.v x_1 angle.r) = sqrt(2alpha)$
$ bar.v x_1 angle.r = mat(1/sqrt(2); -1/sqrt(2)) $

$ sigma_1 x_2 = lambda_2 x_2 $
$ mat(0, 1; 1, 0) mat(x_21; x_22)  = mat(x_21; x_22) $
$ x_22 = x_21 $
$ x_2 = mat(alpha; alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_2 bar.v x_2 angle.r) = sqrt(2alpha)$
$ bar.v x_2 angle.r = mat(1/sqrt(2); 1/sqrt(2)) $

$therefore$ for $sigma_1$, eigenvalues are $-1, 1$, and corresponding orthogonal eigenvectors are $mat(alpha; -alpha), mat(beta; beta)$, which upon normalizing give $mat(1/sqrt(2); -1/sqrt(2)), mat(1/sqrt(2); 1/sqrt(2))$.

For $sigma_2$, $det(sigma_2 - lambda I) = 0$
$ det mat(-lambda, -i; i, -lambda) = 0 $
$ lambda^2 - 1 = 0 $
$ lambda_1 = -1, lambda_2 = 1 $

$ sigma_2 x_1 = lambda_1 x_1 $
$ mat(0, -i; i, 0) mat(x_11; x_12)  = mat(-x_11; -x_12) $
$ x_12 = -i x_11 $
$ x_1 = mat(alpha; -i alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_1 bar.v x_1 angle.r) = sqrt(2alpha)$
$ bar.v x_1 angle.r = mat(1/sqrt(2); -i/sqrt(2)) $

$ sigma_2 x_2 = lambda_2 x_2 $
$ mat(0, -i; i, 0) mat(x_21; x_22) = mat(x_21; x_22) $
$ x_22 = i x_21 $
$ x_2 = mat(alpha; i alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_2 bar.v x_2 angle.r) = sqrt(2alpha)$
$ bar.v x_2 angle.r = mat(1/sqrt(2); i / sqrt(2)) $

$therefore$ for $sigma_2$, eigenvalues are $-1, 1$, and corresponding orthogonal eigenvectors are $mat(alpha; -i alpha), mat(beta; i beta)$, which upon normalizing give $mat(1/sqrt(2); -i/sqrt(2)), mat(1/sqrt(2); i/sqrt(2))$.

For $sigma_3$, $det(sigma_3 - lambda I) = 0$
$ det mat(1 - lambda, 0; 0, -1 - lambda) = 0 $
$ lambda^2 - 1 = 0 $
$ lambda_1 = -1, lambda_2 = 1 $

$ sigma_3 x_1 = lambda_1 x_1 $
$ mat(1, 0; 0, -1) mat(x_11; x_12)  = mat(-x_11; -x_12) $
$ x_11 = 0 $
$ x_1 = mat(0; alpha) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_1 bar.v x_1 angle.r) = alpha$
$ bar.v x_1 angle.r = mat(0; 1) $

$ sigma_3 x_2 = lambda_2 x_2 $
$ mat(1, 0; 0, -1) mat(x_21; x_22) = mat(x_21; x_22) $
$ x_22 = 0 $
$ x_2 = mat(alpha; 0) $
For orthonormal basis, we divide by its magnitude $sqrt(angle.l x_2 bar.v x_2 angle.r) = alpha$
$ bar.v x_2 angle.r = mat(1; 0) $

$therefore$ for $sigma_3$, eigenvalues are $-1, 1$, and corresponding orthogonal eigenvectors are $mat(0; alpha), mat(beta; 0)$, which upon normalizing give $mat(0; 1), mat(1; 0)$.
