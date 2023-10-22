#align(center, text(17pt)[*Science-1*])
#align(center, text(16pt)[Assignment-4])
#align(center, text(13pt)[Moida Praneeth Jain, 2022010193])

= Question 1
== (1)
Kinetic Energy $ T = 1/2 m_1 dot(x)_1^2 + 1/2 m_2 dot(x)_1^2 $
Potential Energy $ V = 1/2 k_1 x_1^2 + 1/2 k_2 (x_2 - x_1)^2 $
Lagrangian $ L = T - V $
$ L = 1/2 m_1 dot(x)_1^2 + 1/2 m_2 dot(x)_2^2 - 1/2 k_1 x_1^2 - 1/2 k_2 (x_2 - x_1)^2 $

== (2)
For $x_1$
$ (diff L) / (diff x_1) = -(k_1 + k_2) x_1 + k_2 x_2 $
$ d/(d t) (diff L) / (diff dot(x)_1) = m_1 diaer(x)_1 $
Lagrange equation for $x_1$
$ d/(d t) (diff L) / (diff dot(x)_1) = (diff L) / (diff x_1) $
$ m_1 diaer(x)_1 = -(k_1 + k_2) x_1 + k_2 x_2 $
For $x_2$
$ (diff L) / (diff x_2) = -k_2 x_2 + k_2 x_1 $
$ d/(d t) (diff L) / (diff dot(x)_2) = m_2 diaer(x)_2 $
Lagrange equation for $x_2$
$ d/(d t) (diff L) / (diff dot(x)_2) = (diff L) / (diff x_2) $
$ m_2 diaer(x)_2  = -k_2 x_2 + k_2 x_1 $

== (3)
$ diaer(x)_1 = -(k_1 + k_2) / m_1 x_1 + k_2 / m_1 x_2 $
$ diaer(x)_2 = k_2 / m_2 x_1 - k_2 / m_2 x_2 $
In matrix form
$ mat(diaer(x)_1; diaer(x)_2) = mat(-(k_1 + k_2)/m_1, k_2/m_1; k_2/m_2, -k_2/m_2) mat(x_1; x_2) $

We now find eigenvalues of $ A = mat(-(k_1 + k_2)/m_1, k_2/m_1; k_2/m_2, -k_2/m_2) $
$ |A - lambda I| = 0 $
$ |mat(-(k_1 + k_2)/m_1 - lambda, k_2/m_1; k_2/m_2, -k_2/m_2 - lambda)| = 0 $
$ ((k_1 + k_2)/m_1 + lambda)(k_2/m_2 + lambda) = k_2^2/(m_1 m_2) $
On solving the quadratic equation, we get
$ lambda_1 = (sqrt((k_1 m_2 + k_2 m_1 + k_2 m_2)^2 - 4 k_1 k_2 m_1 m_2) - k_1 m_2 - k_2 m_1 - k_2 m_2)/(2 m_1 m_2) $
$ lambda_2 = (-sqrt((k_1 m_2 + k_2 m_1 + k_2 m_2)^2 - 4 k_1 k_2 m_1 m_2) - k_1 m_2 - k_2 m_1 - k_2 m_2)/(2 m_1 m_2) $

$ w_1^2 = -lambda_1, w_2^2 = -lambda_2 $

The normal mode frequencies are $ w_1 = sqrt(-lambda_1) $ $ w_2 = sqrt(-lambda_2) $
$ w_1 = sqrt(-(sqrt((k_1 m_2 + k_2 m_1 + k_2 m_2)^2 - 4 k_1 k_2 m_1 m_2) - k_1 m_2 - k_2 m_1 - k_2 m_2)/(2 m_1 m_2)) $

$ w_2 = sqrt(-(-sqrt((k_1 m_2 + k_2 m_1 + k_2 m_2)^2 - 4 k_1 k_2 m_1 m_2) - k_1 m_2 - k_2 m_1 - k_2 m_2)/(2 m_1 m_2)) $


= Question 2
#figure(
  image("pendulum.png", width: 30%)
)
== (1)
$ x = l sin(theta) $
$ dot(x) = l cos(theta) dot(theta) $
$ y = l(1 - cos(theta)) $
$ dot(y) = l sin(theta) dot(theta) $
Kinetic Energy
$ T = 1/2 m dot(x)^2 + 1/2 m dot(y)^2 $
$ T = 1/2 m l^2 dot(theta)^2 $
Potential Energy with reference to bottom-most position
$ V = m g l (1 - cos(theta)) $
Lagrangian
$ L = T - V $
$ L = 1/2 m l^2 dot(theta)^2 - m g l (1 - cos(theta)) $
Generalised momentum 
$ p_theta = (diff L) / (diff dot(theta)) $
$ p_theta = m l^2 dot(theta) $

== (2)
Hamiltonian
$ H = sum p_i dot(q)_i - L $
$ H = p_theta dot(theta) - L $
We know that $dot(theta) = p_theta / (m l^2)$
$ L = 1/2 p_theta^2 / (m l^2) - m g l (1 - cos(theta)) $
$ H = p_theta^2/(m l^2) - 1/2 p_theta^2/(m l^2) + m g l (1 - cos(theta)) $
$ H = 1/2 p_theta^2/(m l^2) + m g l (1 - cos(theta)) $
$ H = 1/2 p_theta^2/(m l^2) + 2 m g l sin^2(theta/2) $

== (3)
when $theta$ is small, $sin(theta) -> theta$
$ H = 1/2 p_theta^2/(m l^2) + 2 m g l (theta/2)^2 $
$ H = p_theta^2/(2 m l^2) + theta^2 / (2 / (m g l)) $
$ p_theta^2 / (2 m l^2 H) + theta^2 / ((2 H) /(m g l)) = 1 $
Since the total energy is constant (no energy loss), and the hamiltonian is equal to the total energy in this case, $H$ is also constant.
#figure(
  image("ellipse.png", width: 50%)
)

with $a = (2H)/(m g l) "and" b=2 m l^2 H$

= Question 3
== (1)
In polar form, 
$ x = r cos(theta) $
$ dot(x) = dot(r) cos(theta) - r sin(theta) dot(theta) $
$ y = r sin(theta) $
$ dot(y) = dot(r) sin(theta) + r cos(theta) dot(theta) $
Kinetic Energy
$ T = 1/2 m dot(x)^2 + 1/2 m dot(y)^2 $
$ T = 1/2 m (dot(r)^2 + r^2 dot(theta)^2) $
Lagrangian
$ L = T - V $
$ L = 1/2 m (dot(r)^2 + r^2 dot(theta)^2) + alpha / r $
Generalised momentum corresponding to $r$
$ p_r = (diff L) / (diff dot(r)) = m dot(r) $
Generalised momentum corresponding to $theta$
$ p_theta = (diff L) / (diff dot(theta)) = m r^2 dot(theta) = A $
$ dot(theta) = A/(m r^2) $
Lagrange equation for $theta$
$ d/(d t) (diff L)/(diff dot(theta)) = (diff L)/(diff theta) $
$ d/(d t) m r^2 dot(theta) = 0 $
$therefore$ Angular momentum $A$ remains conserved throughout.

Lagrange equation for $r$
$ d/(d t) (diff L)/(diff dot(r)) = (diff L)/(diff r) $
$ m diaer(r) = m r dot(theta)^2 - alpha/r^2 $
$ m diaer(r) =  A^2/(m r^3) - alpha / r^2 $
$ m diaer(r) = - diff/(diff r) (A^2/(2 m r^2) - alpha/r) $
$ m diaer(r) = - (diff V_"eff")/(diff r) $
$ therefore V_"eff" =  A^2/(2 m r^2) - alpha / r $

#figure(
  image("graph.png", width: 70%)
)

Since the kinetic energy $T$ is always positive, the total energy $E$ is always greater than the potential energy $V$.

$therefore$ Orbit will be bound for negative total energies as it is between $r_1$ and $r_2$. Otherwise, orbit will be unbound.

Condition for orbit to be bound is $E < 0$

== (2)
For a circular orbit, $r_1 = r_2 = r_0$. To find $r_0$, since it is minima
$ (d V_"eff")/(d r)|_(r=r_0) = 0 $
$ alpha/r_0^2 = A^2 / (m r_0^3) $
$ r_0 = A^2 / (m alpha) $
The corresponding energy is 
$ E = A^2/(2 m r_0^2) - alpha / r_0 $
$ E = (A^2 m^2 alpha^2)/(2 m A^4) - (alpha m alpha)/ A^2 $
$ E = (m alpha^2) / (2 A^2) - (m alpha^2) / A^2 $
$ E = -(m alpha^2) / (2 A^2) $

== (3)
The minimum and maximum radius $r_1$ and $r_2$ are the roots of the equation $E = V_"eff"$ where $E < 0$, as can be seen from the graph above.

$ E = V_"eff" $
$ E = A^2 / (2 m r^2) - alpha / r $
$ 2 E m r^2 = A^2 - 2 alpha m r $
On solving the quadratic, we get
$ r_"min" = (-2 alpha m + sqrt(4 alpha^2 m^2 + 8A^2 E m))/(4 E m) $
$ r_"max" = (-2 alpha m - sqrt(4 alpha^2 m^2 + 8A^2 E m))/(4 E m) $

In case $E > 0$, we only get a minimum radius $r_min$
