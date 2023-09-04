#align(center, text(17pt)[*Science-1*])
#align(center, text(16pt)[Assignment-3])
#align(center, text(13pt)[Moida Praneeth Jain, 2022010193])

= Question 1
For plot (i), $y = x " for " 0 <= x <= 1, 0 <= y <= 1$

For plot (ii), $y = 0 " for " 0 <= x < 1$ and $x = 1 " for " 0<y<=1$

== (a)
$ d f = d(x y) $
$ d f = (d x)y + x (d y) $
=== (i)
$ d f = x d x + y d y $
$ integral d f = integral_0^1 x d x + integral_0^1 y d y $
$ integral d f = [x^2/2]_0^1 + [y^2/2]_0^1 $
$ integral d f = 1/2 + 1/2 $
$ integral d f = 1 $
=== (ii)
$ integral d f = integral_0^1 x d x + integral_0^0 y d y + integral_1^1 x d x + integral_0^1 y d y $
$ integral d f = [x^2/2]_0^1 + 0 + 0 + [y^2/2]_0^1 $
$ integral d f = 1/2 + 1/2 $
$ integral d f = 1 $

== (b)
$ d f = d(x y) $

Note that the integral is path independent.

Since $d f$ is equal to the differential of a differentiable function $x y$, it is an exact differential.

== (c)
=== (i)
$ d g = y d x $
$ d g = x d x $
$ integral d g = integral_0^1 x d x $
$ integral d g = [x^2/2]_0^1 $
$ integral d g = 1/2 $
=== (ii)
$ d g = y d x $
$ integral d g = integral_0^1 0 d x + integral_1^1 1 d x $
$ integral d g = 0 $

== (d)
$ d g = y d x $

Note that the integral is path dependent

Since $d g$ is not equal to the differential of a differentiable function, it is an inexact differential.

= Question 2
Assuming 1 mole of gas as $U = C_V T$

Let $rho$ be the mass density, $p$ be the pressure, $V$ be the volume, $M$ be the molar mass.

We know that $C_v = R / (1 - gamma)$, where $R$ is the gas constant.
== (i)
$ U = C_V T $
$ U/M = (C_V T) / M $
Since $p V = R T$
$ U/M = (C_V p V )/ (M R) $
Since $rho = M / V$
$ U/M = (C_V p) / (rho R) $
$ U/M = (cancel(R) p) / (rho cancel(R) (gamma - 1)) $
$ U/M = p / (rho (gamma - 1)) $
This is the required internal energy per unit mass.

== (ii)
$ U = (R T) / (gamma - 1) $
$ U/V = (R T) / (V (gamma - 1)) $
Since $p V = R T$
$ U/V = (p cancel(V))/(cancel(V)(gamma - 1)) $
$ U/V = p / (gamma - 1) $
This is the required internal energy per unit volume.

= Question 3
$ alpha = 1/V ((diff V) / (diff T))_p $
$ ((diff V)/(diff T))_p = 1/((diff T) / (diff V))_p $
For a van der Waals gas,
$ R T = (p + a/V^2)(V-b) $
$ R ((diff T)/(diff V))_p = (p + a/V^2) - (2a)/V^3 (V-b) $
$ ((diff V)/(diff T))_p = (R V^3) / (V(p V^2 + a) - 2 a (V - b)) $
$ alpha = (R V^2) / (V(p V^2 + a) - 2 a (V - b)) $
This is the coefficient of thermal expansion $alpha$ for a van der Waals gas.

Now, for isothermal compressibility: 

$ kappa_T = - 1 / V ((diff V) / (diff p ))_T $
At a constant temperature, on increasing the pressure, the volume of a gas decreases.
This will result in $((diff V)/(diff p))_T$ being negative. Hence, for the constant
$kappa_T$ to be positive, the RHS is multiplied by -1.

Now, to prove the required relation: 


$ ((diff V) / (diff p))_T = 1/((diff p)/(diff V))_T $
$ p = (R T)/(V - b) - a/V^2 $
$ ((diff p)/(diff V))_T = - (R T)/(V-b)^2 + (2 a)/ V^3 $
On substituting $R T$ from the van der Waals gas equation, 
$ ((diff p)/(diff V))_T = -(p+a/V^2)cancel(V-b)/(V-b)^cancel(2) + (2a)/V^3 $
$ ((diff V)/(diff p))_T = (V^3 (V-b))/(2a(V-b) - V(p V^2 + a)) $
$ kappa_T = (V^2 (V-b))/(V(p V^2 + a) - 2a(V-b)) $
$ kappa_T R = (R V^2) / (V(p V^2 + a) - 2a(V-b)) (V-b) $
$ kappa_T R = alpha (V - b) $
For one mole of gas, $V=V_m$
$ kappa_T R = alpha (V_m - b) $
Hence, proven.

= Question 4

Assuming $n$ moles of liquid water initially at $-10^o C$.

Let the latent heat of fusion of water be $L$, specific heat of water be $s$.


Since result is a mixture of ice and water, this is only possible at tempetarure $T_2 = 0^o C$. ($T_1 = -10^o C$)

Therefore, $Delta T = 10K$.

Since the compartment is thermally insulated, $q = 0J$.

The latent heat of ice will be compensted by the heating of water.

$ n * 18 * s * Delta T = m_"ice" * L $

$ m_"ice" = (18 n s Delta T)/L $

Let $H_1$ be enthalpy change in heating of water and $H_2$ be enthalpy change of fusion.

$ Delta H = Delta H_1 + Delta H_2 $

$ Delta H_1 = 18 n s Delta T $
$ Delta H_2 = Delta H_"fusion" = - m_"ice" L $

$ Delta H = 18 n s Delta T - m_"ice" L $
$ Delta H = 0 $

Note that for liquids and solids, $Delta U approx Delta H$

$ Delta U = 0 $

From first law of thermodynamics

$ Delta U = q + w $
$ w = 0 $

Let $Delta S_1$ be entropy change in heating of water and $Delta S_2$ be entropy change of fusion.

$ Delta S_1 = m s ln(T_2/T_1) $
$ Delta S_1 = 18 n s ln(283/273) $

$ Delta S_2 = (Delta H_"fusion")/ T $
$ Delta S_2 = -(m_"ice" L)/273 $
$ Delta S_2 = - (18 n s Delta T)/273 $
$ Delta S_2 = - (60 n s)/91 $

$ Delta S = n s (18 ln(283/273) - 60/91) $
