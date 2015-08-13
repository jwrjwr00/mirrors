#!/usr/bin/ruby

# no gem needed in order to use complex numbers in ruby

# a complex number
cc = Complex(3, 4)

p Complex.polar(1, Math::PI/2)
# when printed, it's shown as (‹a›+‹b› i)
p cc                            # (3+4i)

p cc.real                    # ⇒ 3.0
p cc.imag                    # ⇒ 4.0

# input comlex number in polar form. The input is (length, ‹angle in radians›)
p Complex.polar(1, Math::PI)    # ⇒ (-1.0+1.2246467991473532e-16i)

# length of a Complex number. That is, Sqrt[ a^2 + b^2]
p Complex(3, 4).abs                    # ⇒ 5.0

# Complex number addition. (same as vector addition)
p Complex(2, 3) + Complex(4, 5)        # ⇒ (6+8i)

# multiplication of complex numbers
p Complex(1, 0) * Complex(0, 1)        # ⇒ (0+1i)

# scalar multiplication. That is, scale it.
p Complex(3, 4) * 2             # ⇒ (6+8j)

# adding a scalar adds to the real part
p Complex(3, 4) + 1             # ⇒ (4+4i)

z1 = Complex(0, 1)

# get length
p z1.abs                        # ⇒ 1.0

# get the angle. return in radians
p z1.angle                      # ⇒ 1.5707963267948966

# get polar coordinates. Returns a array [length, angle].
p z1.polar                      # ⇒ [1, 1.5707963267948966]

# polar to rectangular. Input is (length, ‹angle in radians›). Returns a complex number
p Complex.polar(1, Math::PI)   # ⇒ (-1.0+1.2246467991473532e-16i) really is just (-1+0i)

# constant π
p Math::PI                       # ⇒ 3.141592653589793

# constant e
p Math::E                       # ⇒ 2.718281828459045