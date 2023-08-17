#align(center, text(17pt)[*Science-1*])
#align(center, text(16pt)[Assignment-2])
#align(center, text(13pt)[Moida Praneeth Jain, 2022010193])

= Question 1

== (a)
For a perfect gas 
$ p V_m^o = R T "(ideal gas equation)"  - (1) $

$ Z = V_m / V_m^o "(by definition)" $
$ Z = V_m / ((R T)  / p)  "(on substituing (1))" $
$ p V_m = R T Z $

Hence, proven.

== (b)
Case 1: $Z > 1$ at high pressure

At very high pressures, the number of collisions between the gas molecules increases drastically. This causes the gas molecules to come closer to each other, due to which the repulsive forces between them drastically increase and in turn, their molar volume increases ($V_m > V_m^0$). Therefore, $Z = V_m / V_m^0 > 1$.

Case 2: $Z < 1$ at intermediate pressure

At intermediate pressures, the gases are far enough apart for the attractive forces to dominate over the repulsive forces. Due to this, the molar volume decreases ($V_m < V_m^0$). Therefore, $Z = V_m / V_m^0 < 1$.

Case 3: $Z approx 1$ at very low pressures

At very low pressures, the gas molecules so far apart that the interactions between them are negligible and there is almost no change in molar volume ($V_m = V_m^0$). In this condition, the gas acts like an ideal gas. Therefore, $Z = V_m / V_m^0 approx 1$.

== (c)
$ p V_m = R T (1 + B^' p + C^' p^2 + ...) $
$ Z = V_m / V_m^o $
$ Z = ((R T)/p (1 + B^' p + C^' p^2 + ...)) / ((R T) / p) $
$ Z = 1 + B^' p + C^' p^2 + ... $
$ (d Z)/(d p) = B' + 2 C^'p + ... $
$ "As" p arrow.r 0, (d Z) / (d p) arrow.r B^' $

== (d)

== (e)
Boyle temperature is the temperature for which the second virial coefficient is zero. 

$ B(T) = a + b e^(-c/T^2) $
$a = -0.1993 / 10^5 "Pa"^(-1), b = 0.2002 / 10^5 "Pa"^(-1), c = 1131 K^2$

$ 0 = -0.1993 + 0.2002 e^(-1131/T^2) $
$ e^(1131/T^2) = 2002/1993 $
$ 1131/T^2  = ln(2002/1993) $
$ T = sqrt(1131 / ln(2002/1993)) $
#let T = calc.round(calc.sqrt(1131 / calc.ln(2002/1993)), digits: 4)
$ T approx #T K $

The Boyle's temperature of methane is approximately #T K.

== (f)
Vanderwaal's equation for a mole of gas is given by

$ (p + a / V^2) (V - b) = R T $

Case 1: At low pressure

Since the pressure is low, the volume occupied by the gas is high, so the volume correction term $b$ is negligible. 

$ (p + a / V^2)V = R T $
$ p V + a / V = R T $
$ (p V) / (R T) + a / (V R T) = 1 $
$ Z + a / (V R T) = 1 $
$ Z = 1 - a / (V R T) $

Therefore, at low pressure, the compressibility factor $Z$ is less than one.

Case 2: At high pressure

Since the pressure is high, the pressure correction term $a$ is negligible.

$ p(V - b) = R T $
$ p V - p b = R T $
$ (p V) / (R T) - (p b) / (R T) = 1 $
$ Z = 1 + (p b) / (R T) $

Therefore, at high pressure, the compressibility factor $Z$ is greater than one.
 
= Question 2

Vanderwaal's equation for a mole of gas is given by

$ (p + a / V^2) (V - b) = R T $
$ p = (R T) / (V - b) - a / V^2 $
At critical point, $(diff p) / (diff V) = 0$
$ (diff p) / (diff V) = (- R T)/(V - b)^2 + (2 a)/V^3 $
$ 0 = (- R T_c) / (V_c - b)^2 + (2 a)/V_c^3 $
$ (R T_c) / (V_c - b)^2 = (2 a)/V_c^3 $
$ T_c = (2 a (V_c - b)^2) / (R V_c^3) $
At critical point, $(diff^2 p) / (diff V^2) = 0$
$ (diff^2 p) / (diff V^2) = (2 R T) / (V - b)^3 - (6 a) / V^4 $
$ 0 = (2 R T_c) / (V_c - b)^3 - (6 a) / V_c^4 $
$ (R T_c) / (V_c - b)^3 = (3 a) / V_c^4 $
$ T_c = (3 a (V_c - b)^3) / (R V_c^4) $

$ therefore (2 a (V_c - b)^2) / (R V_c^3) = (3 a (V_c - b)^3) / (R V_c^4) $

$ 2 V_c = 3 V_c - 3 b $
$ V_c = 3 b $
$ T_c = (3 a (3b - b)^3) / (R (3b)^4) $
$ T_c = (8 a) / (27 R b) $
$ (p_c + a/V_c^2) (V_c - b) = R T_c $
$ (p_c + a/(9 b^2)) 2 b = (8 a)/(27 b) $
$ p_c = a/(27b^2) $

The critical constants are $p_c = a/(27b^2), T_c = (8 a)/(27 R b), V_c = 3b$

= Question 3

Vanderwaal's equation for a mole of gas is given by

Let $X/X_c "be" X_r$

$ (p + a / V^2) (V - b) = R T $
$ (p / p_c a/(27b^2) + a/((3b)^2(V / V_c)^2))(V/V_c 3b - b) = R T/T_c (8a)/(27 R b) $
$ (p_r a/(27b^2) + a/((9b^2)V_r^2))3b(V_r - 1/3) = R T_r (8a)/(27 R b) $
$ a/b (p_r/9 + 1/(3V_r^2)) (V_r - 1/3) = R T_r (8a)/(27 R b) $
$ (p_r + 3/V_r^2) (V_r - 1/3) = 8/3 T_r $

This is the reduced form of Vanderwaal's equation.