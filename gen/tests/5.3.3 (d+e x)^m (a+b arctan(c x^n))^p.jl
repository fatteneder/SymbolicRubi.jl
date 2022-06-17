# line nr: 11
@test integrate((a + b*atan(c*x))*Power(d + e*x, 4), x) == (a + b*atan(c*x))*Power(d + e*x, 5)*Power(5e, -1) - b*Power(e, 4)*Power(x, 4)*Power(20c, -1) - b*(5Power(c, 4)*Power(d, 4) + Power(e, 4) - 10Power(c, 2)*Power(d, 2)*Power(e, 2))*Log(1 + Power(c, 2)*Power(x, 2))*Power(10Power(c, 5), -1) - b*d*(5Power(e, 4) + Power(c, 4)*Power(d, 4) - 10Power(c, 2)*Power(d, 2)*Power(e, 2))*atan(c*x)*Power(5e*Power(c, 4), -1) - b*(10Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(e, 2)*Power(x, 2)*Power(10Power(c, 3), -1) - b*d*Power(e, 3)*Power(x, 3)*Power(3c, -1) - b*d*e*x*(2Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(Power(c, 3), -1)

# line nr: 12
@test integrate((a + b*atan(c*x))*Power(d + e*x, 3), x) == (a + b*atan(c*x))*Power(d + e*x, 4)*Power(4e, -1) - b*(Power(c, 4)*Power(d, 4) + Power(e, 4) - 6Power(c, 2)*Power(d, 2)*Power(e, 2))*atan(c*x)*Power(4e*Power(c, 4), -1) - b*Power(e, 3)*Power(x, 3)*Power(12c, -1) - b*d*Power(e, 2)*Power(x, 2)*Power(2c, -1) - b*e*x*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(4Power(c, 3), -1) - b*d*(e + c*d)*(c*d - e)*Log(1 + Power(c, 2)*Power(x, 2))*Power(2Power(c, 3), -1)

# line nr: 13
@test integrate((a + b*atan(c*x))*Power(d + e*x, 2), x) == (a + b*atan(c*x))*Power(d + e*x, 3)*Power(3e, -1) - b*Power(e, 2)*Power(x, 2)*Power(6c, -1) - b*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(1 + Power(c, 2)*Power(x, 2))*Power(6Power(c, 3), -1) - b*d*e*x*Power(c, -1) - b*d*(Power(d, 2) - 3Power(e, 2)*Power(Power(c, 2), -1))*atan(c*x)*Power(3e, -1)

# line nr: 14
@test integrate((a + b*atan(c*x))*Power(d + e*x, 1), x) == (a + b*atan(c*x))*Power(d + e*x, 2)*Power(2e, -1) - b*d*Log(1 + Power(c, 2)*Power(x, 2))*Power(2c, -1) - b*e*x*Power(2c, -1) - b*(Power(d, 2) - Power(e, 2)*Power(Power(c, 2), -1))*atan(c*x)*Power(2e, -1)

# line nr: 15
@test integrate((a + b*atan(c*x))*Power(Power(d + e*x, 1), -1), x) == (a + b*atan(c*x))*Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(e, -1) + I*b*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(2e, -1) - (a + b*atan(c*x))*Log(2Power(1 - I*c*x, -1))*Power(e, -1) - I*b*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2e, -1)

# line nr: 16
@test integrate((a + b*atan(c*x))*Power(Power(d + e*x, 2), -1), x) == b*c*Log(d + e*x)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + b*d*atan(c*x)*Power(c, 2)*Power(e*(Power(c, 2)*Power(d, 2) + Power(e, 2)), -1) - (a + b*atan(c*x))*Power(e*(d + e*x), -1) - b*c*Log(1 + Power(c, 2)*Power(x, 2))*Power(2Power(e, 2) + 2Power(c, 2)*Power(d, 2), -1)

# line nr: 17
@test integrate((a + b*atan(c*x))*Power(Power(d + e*x, 3), -1), x) == b*d*Log(d + e*x)*Power(c, 3)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + b*(e + c*d)*(c*d - e)*atan(c*x)*Power(c, 2)*Power(2e*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - (a + b*atan(c*x))*Power(2e*Power(d + e*x, 2), -1) - b*c*Power((d + e*x)*(2Power(e, 2) + 2Power(c, 2)*Power(d, 2)), -1) - b*d*Log(1 + Power(c, 2)*Power(x, 2))*Power(c, 3)*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1)

# line nr: 18
@test integrate((a + b*atan(c*x))*Power(Power(d + e*x, 4), -1), x) == b*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(d + e*x)*Power(c, 3)*Power(3Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 3), -1) + b*d*(Power(c, 2)*Power(d, 2) - 3Power(e, 2))*atan(c*x)*Power(c, 4)*Power(3e*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 3), -1) - (a + b*atan(c*x))*Power(3e*Power(d + e*x, 3), -1) - b*c*Power((6Power(e, 2) + 6Power(c, 2)*Power(d, 2))*Power(d + e*x, 2), -1) - 2b*d*Power(c, 3)*Power(3(d + e*x)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - b*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(1 + Power(c, 2)*Power(x, 2))*Power(c, 3)*Power(6Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 3), -1)

# line nr: 21
@test integrate(Power(d + e*x, 3)*Power(a + b*atan(c*x), 2), x) == Power(a + b*atan(c*x), 2)*Power(d + e*x, 4)*Power(4e, -1) + Power(b, 2)*Power(e, 3)*Power(x, 2)*Power(12Power(c, 2), -1) + d*x*Power(b, 2)*Power(e, 2)*Power(Power(c, 2), -1) + e*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 2)*Power(4Power(c, 4), -1) + I*d*(e + c*d)*(c*d - e)*Power(a + b*atan(c*x), 2)*Power(Power(c, 3), -1) + I*d*(e + c*d)*(c*d - e)*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 3), -1) + 2b*d*(a + b*atan(c*x))*(e + c*d)*(c*d - e)*Log(2Power(1 + I*c*x, -1))*Power(Power(c, 3), -1) - (Power(c, 4)*Power(d, 4) + Power(e, 4) - 6Power(c, 2)*Power(d, 2)*Power(e, 2))*Power(a + b*atan(c*x), 2)*Power(4e*Power(c, 4), -1) - Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 2)*Power(e, 3)*Power(12Power(c, 4), -1) - b*(a + b*atan(c*x))*Power(e, 3)*Power(x, 3)*Power(6c, -1) - d*atan(c*x)*Power(b, 2)*Power(e, 2)*Power(Power(c, 3), -1) - b*d*(a + b*atan(c*x))*Power(c, -1)*Power(e, 2)*Power(x, 2) - a*b*e*x*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(2Power(c, 3), -1) - e*x*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*atan(c*x)*Power(b, 2)*Power(2Power(c, 3), -1)

# line nr: 22
@test integrate(Power(a + b*atan(c*x), 2)*Power(d + e*x, 2), x) == Power(d + e*x, 3)*Power(a + b*atan(c*x), 2)*Power(3e, -1) + x*Power(b, 2)*Power(e, 2)*Power(3Power(c, 2), -1) + d*e*Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 2)*Power(Power(c, 2), -1) + I*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(a + b*atan(c*x), 2)*Power(Power(c, 3), -1)*Power(3, -1) + 2b*(a + b*atan(c*x))*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(2Power(1 + I*c*x, -1))*Power(3Power(c, 3), -1) + I*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 3), -1)*Power(3, -1) - atan(c*x)*Power(b, 2)*Power(e, 2)*Power(3Power(c, 3), -1) - d*(Power(d, 2) - 3Power(e, 2)*Power(Power(c, 2), -1))*Power(a + b*atan(c*x), 2)*Power(3e, -1) - b*(a + b*atan(c*x))*Power(e, 2)*Power(x, 2)*Power(3c, -1) - 2a*b*d*e*x*Power(c, -1) - 2d*e*x*atan(c*x)*Power(b, 2)*Power(c, -1)

# line nr: 23
@test integrate(Power(d + e*x, 1)*Power(a + b*atan(c*x), 2), x) == Power(a + b*atan(c*x), 2)*Power(d + e*x, 2)*Power(2e, -1) + I*d*Power(c, -1)*Power(a + b*atan(c*x), 2) + e*Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 2)*Power(2Power(c, 2), -1) + I*d*Power(b, 2)*Power(c, -1)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1)) + 2b*d*(a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(c, -1) - (Power(d, 2) - Power(e, 2)*Power(Power(c, 2), -1))*Power(a + b*atan(c*x), 2)*Power(2e, -1) - a*b*e*x*Power(c, -1) - e*x*atan(c*x)*Power(b, 2)*Power(c, -1)

# line nr: 24
@test integrate(Power(a + b*atan(c*x), 2)*Power(Power(d + e*x, 1), -1), x) == Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(e, -1)*Power(a + b*atan(c*x), 2) + Power(b, 2)*PolyLog(3, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2e, -1) + I*b*(a + b*atan(c*x))*Power(e, -1)*PolyLog(2, 1 - 2Power(1 - I*c*x, -1)) - Log(2Power(1 - I*c*x, -1))*Power(e, -1)*Power(a + b*atan(c*x), 2) - Power(b, 2)*PolyLog(3, 1 - 2Power(1 - I*c*x, -1))*Power(2e, -1) - I*b*(a + b*atan(c*x))*Power(e, -1)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))

# line nr: 25
@test integrate(Power(a + b*atan(c*x), 2)*Power(Power(d + e*x, 2), -1), x) == I*c*Power(a + b*atan(c*x), 2)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + d*Power(c, 2)*Power(a + b*atan(c*x), 2)*Power(e*(Power(c, 2)*Power(d, 2) + Power(e, 2)), -1) + I*c*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + I*c*Power(b, 2)*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + 2b*c*(a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + 2b*c*(a + b*atan(c*x))*Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) - Power(a + b*atan(c*x), 2)*Power(e*(d + e*x), -1) - I*c*Power(b, 2)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) - 2b*c*(a + b*atan(c*x))*Log(2Power(1 - I*c*x, -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1)

# line nr: 26
@test integrate(Power(a + b*atan(c*x), 2)*Power(Power(d + e*x, 3), -1), x) == d*atan(c*x)*Power(b, 2)*Power(c, 3)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + (e + c*d)*(c*d - e)*Power(c, 2)*Power(a + b*atan(c*x), 2)*Power(2e*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + I*d*Power(c, 3)*Power(a + b*atan(c*x), 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + e*Log(d + e*x)*Power(b, 2)*Power(c, 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + I*d*Power(b, 2)*Power(c, 3)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + I*d*Power(b, 2)*Power(c, 3)*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 2b*d*(a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(c, 3)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 2b*d*(a + b*atan(c*x))*Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(c, 3)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - Power(a + b*atan(c*x), 2)*Power(2e*Power(d + e*x, 2), -1) - b*c*(a + b*atan(c*x))*Power((d + e*x)*(Power(c, 2)*Power(d, 2) + Power(e, 2)), -1) - e*Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 2)*Power(c, 2)*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - I*d*Power(b, 2)*Power(c, 3)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - 2b*d*(a + b*atan(c*x))*Log(2Power(1 - I*c*x, -1))*Power(c, 3)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1)

# line nr: 29
@test integrate(Power(a + b*atan(c*x), 3)*Power(d + e*x, 3), x) == Power(a + b*atan(c*x), 3)*Power(d + e*x, 4)*Power(4e, -1) + atan(c*x)*Power(b, 3)*Power(e, 3)*Power(4Power(c, 4), -1) + (a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(b, 2)*Power(e, 3)*Power(2Power(c, 4), -1) + (a + b*atan(c*x))*Power(b, 2)*Power(e, 3)*Power(x, 2)*Power(4Power(c, 2), -1) + I*b*Power(e, 3)*Power(a + b*atan(c*x), 2)*Power(Power(c, 4), -1)*Power(4, -1) + I*d*(e + c*d)*(c*d - e)*Power(a + b*atan(c*x), 3)*Power(Power(c, 3), -1) + I*Power(b, 3)*Power(e, 3)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 4), -1)*Power(4, -1) + 3a*d*x*Power(b, 2)*Power(e, 2)*Power(Power(c, 2), -1) + 3d*(e + c*d)*(c*d - e)*Power(b, 3)*PolyLog(3, 1 - 2Power(1 + I*c*x, -1))*Power(2Power(c, 3), -1) + 3d*x*atan(c*x)*Power(b, 3)*Power(e, 2)*Power(Power(c, 2), -1) + 3b*d*(e + c*d)*(c*d - e)*Log(2Power(1 + I*c*x, -1))*Power(a + b*atan(c*x), 2)*Power(Power(c, 3), -1) + 3I*d*(a + b*atan(c*x))*(e + c*d)*(c*d - e)*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 3), -1) - (Power(c, 4)*Power(d, 4) + Power(e, 4) - 6Power(c, 2)*Power(d, 2)*Power(e, 2))*Power(a + b*atan(c*x), 3)*Power(4e*Power(c, 4), -1) - x*Power(b, 3)*Power(e, 3)*Power(4Power(c, 3), -1) - b*Power(e, 3)*Power(x, 3)*Power(a + b*atan(c*x), 2)*Power(4c, -1) - 3b*d*Power(e, 2)*Power(a + b*atan(c*x), 2)*Power(2Power(c, 3), -1) - 3d*Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 3)*Power(e, 2)*Power(2Power(c, 3), -1) - 3b*d*Power(e, 2)*Power(x, 2)*Power(a + b*atan(c*x), 2)*Power(2c, -1) - 3e*(a + b*atan(c*x))*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(2Power(1 + I*c*x, -1))*Power(b, 2)*Power(2Power(c, 4), -1) - 3b*e*x*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(a + b*atan(c*x), 2)*Power(4Power(c, 3), -1) - 3I*e*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(b, 3)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 4), -1)*Power(4, -1) - 3I*b*e*(6Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(a + b*atan(c*x), 2)*Power(Power(c, 4), -1)*Power(4, -1)

# line nr: 30
@test integrate(Power(a + b*atan(c*x), 3)*Power(d + e*x, 2), x) == Power(a + b*atan(c*x), 3)*Power(d + e*x, 3)*Power(3e, -1) + (3Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(b, 3)*PolyLog(3, 1 - 2Power(1 + I*c*x, -1))*Power(2Power(c, 3), -1) + b*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Log(2Power(1 + I*c*x, -1))*Power(a + b*atan(c*x), 2)*Power(Power(c, 3), -1) + a*x*Power(b, 2)*Power(e, 2)*Power(Power(c, 2), -1) + x*atan(c*x)*Power(b, 3)*Power(e, 2)*Power(Power(c, 2), -1) + I*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(Power(c, 3), -1)*Power(3, -1)*Power(a + b*atan(c*x), 3) + I*(a + b*atan(c*x))*(3Power(c, 2)*Power(d, 2) - Power(e, 2))*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 3), -1) - d*(Power(d, 2) - 3Power(e, 2)*Power(Power(c, 2), -1))*Power(a + b*atan(c*x), 3)*Power(3e, -1) - b*Power(e, 2)*Power(a + b*atan(c*x), 2)*Power(2Power(c, 3), -1) - Log(1 + Power(c, 2)*Power(x, 2))*Power(b, 3)*Power(e, 2)*Power(2Power(c, 3), -1) - b*Power(e, 2)*Power(x, 2)*Power(a + b*atan(c*x), 2)*Power(2c, -1) - 3b*d*e*x*Power(c, -1)*Power(a + b*atan(c*x), 2) - 6d*e*(a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(b, 2)*Power(Power(c, 2), -1) - 3I*d*e*Power(b, 3)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 2), -1) - 3I*b*d*e*Power(a + b*atan(c*x), 2)*Power(Power(c, 2), -1)

# line nr: 31
@test integrate(Power(a + b*atan(c*x), 3)*Power(d + e*x, 1), x) == Power(a + b*atan(c*x), 3)*Power(d + e*x, 2)*Power(2e, -1) + I*d*Power(c, -1)*Power(a + b*atan(c*x), 3) + 3d*Power(b, 3)*PolyLog(3, 1 - 2Power(1 + I*c*x, -1))*Power(2c, -1) + 3b*d*Log(2Power(1 + I*c*x, -1))*Power(c, -1)*Power(a + b*atan(c*x), 2) + 3I*d*(a + b*atan(c*x))*Power(b, 2)*Power(c, -1)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1)) - (Power(d, 2) - Power(e, 2)*Power(Power(c, 2), -1))*Power(a + b*atan(c*x), 3)*Power(2e, -1) - 3e*(a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(b, 2)*Power(Power(c, 2), -1) - 3b*e*x*Power(a + b*atan(c*x), 2)*Power(2c, -1) - 3I*b*e*Power(a + b*atan(c*x), 2)*Power(Power(c, 2), -1)*Power(2, -1) - 3I*e*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 2), -1)*Power(2, -1)*Power(b, 3)

# line nr: 32
@test integrate(Power(a + b*atan(c*x), 3)*Power(Power(d + e*x, 1), -1), x) == Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(e, -1)*Power(a + b*atan(c*x), 3) + 3(a + b*atan(c*x))*Power(b, 2)*PolyLog(3, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2e, -1) + 3I*Power(b, 3)*PolyLog(4, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(4e, -1) + 3I*b*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(a + b*atan(c*x), 2)*Power(2e, -1) - Log(2Power(1 - I*c*x, -1))*Power(e, -1)*Power(a + b*atan(c*x), 3) - 3(a + b*atan(c*x))*Power(b, 2)*PolyLog(3, 1 - 2Power(1 - I*c*x, -1))*Power(2e, -1) - 3I*Power(b, 3)*PolyLog(4, 1 - 2Power(1 - I*c*x, -1))*Power(4e, -1) - 3I*b*Power(a + b*atan(c*x), 2)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2e, -1)

# line nr: 33
@test integrate(Power(a + b*atan(c*x), 3)*Power(Power(d + e*x, 2), -1), x) == I*c*Power(a + b*atan(c*x), 3)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + d*Power(c, 2)*Power(a + b*atan(c*x), 3)*Power(e*(Power(c, 2)*Power(d, 2) + Power(e, 2)), -1) + 3c*Power(b, 3)*PolyLog(3, 1 - 2Power(1 + I*c*x, -1))*Power(2Power(e, 2) + 2Power(c, 2)*Power(d, 2), -1) + 3c*Power(b, 3)*PolyLog(3, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2Power(e, 2) + 2Power(c, 2)*Power(d, 2), -1) + 3b*c*Log(2Power(1 + I*c*x, -1))*Power(a + b*atan(c*x), 2)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + 3b*c*Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(a + b*atan(c*x), 2)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + 3I*c*(a + b*atan(c*x))*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) + 3I*c*(a + b*atan(c*x))*Power(b, 2)*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) - Power(a + b*atan(c*x), 3)*Power(e*(d + e*x), -1) - 3c*Power(b, 3)*PolyLog(3, 1 - 2Power(1 - I*c*x, -1))*Power(2Power(e, 2) + 2Power(c, 2)*Power(d, 2), -1) - 3b*c*Log(2Power(1 - I*c*x, -1))*Power(a + b*atan(c*x), 2)*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1) - 3I*c*(a + b*atan(c*x))*Power(b, 2)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), -1)

# line nr: 34
@test integrate(Power(a + b*atan(c*x), 3)*Power(Power(d + e*x, 3), -1), x) == (e + c*d)*(c*d - e)*Power(c, 2)*Power(a + b*atan(c*x), 3)*Power(2e*Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + I*d*Power(c, 3)*Power(a + b*atan(c*x), 3)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3d*Power(b, 3)*Power(c, 3)*PolyLog(3, 1 - 2Power(1 + I*c*x, -1))*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3d*Power(b, 3)*Power(c, 3)*PolyLog(3, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3b*d*Power(c, 3)*Power(a + b*atan(c*x), 2)*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3I*b*e*Power(c, 2)*Power(a + b*atan(c*x), 2)*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3b*d*Log(2Power(1 + I*c*x, -1))*Power(c, 3)*Power(a + b*atan(c*x), 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3e*(a + b*atan(c*x))*Log(2Power(1 + I*c*x, -1))*Power(b, 2)*Power(c, 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3I*e*Power(b, 3)*Power(c, 2)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3b*d*Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(c, 3)*Power(a + b*atan(c*x), 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3e*(a + b*atan(c*x))*Log(2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(b, 2)*Power(c, 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3I*e*Power(b, 3)*Power(c, 2)*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3I*d*(a + b*atan(c*x))*Power(b, 2)*Power(c, 3)*PolyLog(2, 1 - 2Power(1 + I*c*x, -1))*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) + 3I*d*(a + b*atan(c*x))*Power(b, 2)*Power(c, 3)*PolyLog(2, 1 - 2Power(1 - I*c*x, -1))*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - Power(a + b*atan(c*x), 3)*Power(2e*Power(d + e*x, 2), -1) - 3b*c*Power(a + b*atan(c*x), 2)*Power((d + e*x)*(2Power(e, 2) + 2Power(c, 2)*Power(d, 2)), -1) - 3d*Power(b, 3)*Power(c, 3)*PolyLog(3, 1 - 2Power(1 - I*c*x, -1))*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - 3b*d*Log(2Power(1 - I*c*x, -1))*Power(c, 3)*Power(a + b*atan(c*x), 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - 3e*(a + b*atan(c*x))*Log(2Power(1 - I*c*x, -1))*Power(b, 2)*Power(c, 2)*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - 3I*e*Power(b, 3)*Power(c, 2)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(2Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1) - 3I*d*(a + b*atan(c*x))*Power(b, 2)*Power(c, 3)*PolyLog(2, 1 - 2c*(d + e*x)*Power((1 - I*c*x)*(I*e + c*d), -1))*Power(Power(Power(c, 2)*Power(d, 2) + Power(e, 2), 2), -1)

# line nr: 45
@test integrate((a + b*atan(c*Power(x, 2)))*Power(d + e*x, 2), x) == (a + b*atan(c*Power(x, 2)))*Power(d + e*x, 3)*Power(3e, -1) + b*(3c*Power(d, 2) - Power(e, 2))*atan(1 - x*Sqrt(c)*Sqrt(2))*Power(3Sqrt(2)*Power(c, 3Power(2, -1)), -1) + b*(3c*Power(d, 2) + Power(e, 2))*Log(1 + c*Power(x, 2) + x*Sqrt(c)*Sqrt(2))*Power(6Sqrt(2)*Power(c, 3Power(2, -1)), -1) - 2b*x*Power(e, 2)*Power(3c, -1) - b*atan(c*Power(x, 2))*Power(d, 3)*Power(3e, -1) - b*(3c*Power(d, 2) - Power(e, 2))*atan(1 + x*Sqrt(c)*Sqrt(2))*Power(3Sqrt(2)*Power(c, 3Power(2, -1)), -1) - b*(3c*Power(d, 2) + Power(e, 2))*Log(1 + c*Power(x, 2) - x*Sqrt(c)*Sqrt(2))*Power(6Sqrt(2)*Power(c, 3Power(2, -1)), -1) - b*d*e*Log(1 + Power(c, 2)*Power(x, 4))*Power(2c, -1)

# line nr: 46
@test integrate((a + b*atan(c*Power(x, 2)))*Power(d + e*x, 1), x) == (a + b*atan(c*Power(x, 2)))*Power(d + e*x, 2)*Power(2e, -1) + b*d*atan(1 - x*Sqrt(c)*Sqrt(2))*Power(Sqrt(c)*Sqrt(2), -1) + b*d*Log(1 + c*Power(x, 2) + x*Sqrt(c)*Sqrt(2))*Power(2Sqrt(c)*Sqrt(2), -1) - b*atan(c*Power(x, 2))*Power(d, 2)*Power(2e, -1) - b*e*Log(1 + Power(c, 2)*Power(x, 4))*Power(4c, -1) - b*d*atan(1 + x*Sqrt(c)*Sqrt(2))*Power(Sqrt(c)*Sqrt(2), -1) - b*d*Log(1 + c*Power(x, 2) - x*Sqrt(c)*Sqrt(2))*Power(2Sqrt(c)*Sqrt(2), -1)

# line nr: 47
@test integrate((a + b*atan(c*Power(x, 2)))*Power(Power(d + e*x, 1), -1), x) == (a + b*atan(c*Power(x, 2)))*Log(d + e*x)*Power(e, -1) + b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(e + d*Power(-Power(c, 2), Power(4, -1)), -1)*Power(-Power(c, 2), Power(4, -1))) + b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(d*Power(-Power(c, 2), Power(4, -1)) - e, -1)*Power(-Power(c, 2), Power(4, -1))) + b*c*Log(d + e*x)*Log(e*(1 - x*Power(-Power(c, 2), Power(4, -1)))*Power(e + d*Power(-Power(c, 2), Power(4, -1)), -1))*Power(2e*Sqrt(-Power(c, 2)), -1) + b*c*Log(d + e*x)*Log(-e*(1 + x*Power(-Power(c, 2), Power(4, -1)))*Power(d*Power(-Power(c, 2), Power(4, -1)) - e, -1))*Power(2e*Sqrt(-Power(c, 2)), -1) - b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Sqrt(-Sqrt(-Power(c, 2)))*Power(e + d*Sqrt(-Sqrt(-Power(c, 2))), -1)) - b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Sqrt(-Sqrt(-Power(c, 2)))*Power(d*Sqrt(-Sqrt(-Power(c, 2))) - e, -1)) - b*c*Log(d + e*x)*Log(e*(1 - x*Sqrt(-Sqrt(-Power(c, 2))))*Power(e + d*Sqrt(-Sqrt(-Power(c, 2))), -1))*Power(2e*Sqrt(-Power(c, 2)), -1) - b*c*Log(d + e*x)*Log(-e*(1 + x*Sqrt(-Sqrt(-Power(c, 2))))*Power(d*Sqrt(-Sqrt(-Power(c, 2))) - e, -1))*Power(2e*Sqrt(-Power(c, 2)), -1)

# line nr: 48
@test integrate((a + b*atan(c*Power(x, 2)))*Power(Power(d + e*x, 2), -1), x) == b*(c*Power(d, 2) - Power(e, 2))*Sqrt(c)*atan(1 - x*Sqrt(c)*Sqrt(2))*Power((Power(c, 2)*Power(d, 4) + Power(e, 4))*Sqrt(2), -1) + b*atan(c*Power(x, 2))*Power(c, 2)*Power(d, 3)*Power(e*(Power(c, 2)*Power(d, 4) + Power(e, 4)), -1) + b*(c*Power(d, 2) + Power(e, 2))*Sqrt(c)*Log(1 + c*Power(x, 2) + x*Sqrt(c)*Sqrt(2))*Power(2(Power(c, 2)*Power(d, 4) + Power(e, 4))*Sqrt(2), -1) + b*c*d*e*Log(1 + Power(c, 2)*Power(x, 4))*Power(2Power(e, 4) + 2Power(c, 2)*Power(d, 4), -1) - (a + b*atan(c*Power(x, 2)))*Power(e*(d + e*x), -1) - b*(c*Power(d, 2) - Power(e, 2))*Sqrt(c)*atan(1 + x*Sqrt(c)*Sqrt(2))*Power((Power(c, 2)*Power(d, 4) + Power(e, 4))*Sqrt(2), -1) - b*(c*Power(d, 2) + Power(e, 2))*Sqrt(c)*Log(1 + c*Power(x, 2) - x*Sqrt(c)*Sqrt(2))*Power(2(Power(c, 2)*Power(d, 4) + Power(e, 4))*Sqrt(2), -1) - 2b*c*d*e*Log(d + e*x)*Power(Power(c, 2)*Power(d, 4) + Power(e, 4), -1)

# line nr: 52
@test integrate(Power(d + e*x, 1)*Power(a + b*atan(c*Power(x, 2)), 2), x) == d*x*Power(a, 2) + I*e*Power(a + b*atan(c*Power(x, 2)), 2)*Power(2c, -1) + e*Power(x, 2)*Power(a + b*atan(c*Power(x, 2)), 2)*Power(2, -1) + I*e*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + I*c*Power(x, 2), -1))*Power(2c, -1) + b*e*(a + b*atan(c*Power(x, 2)))*Log(2Power(1 + I*c*Power(x, 2), -1))*Power(c, -1) + d*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*Power(-1, 3Power(4, -1))*Power(Sqrt(c), -1) + d*Power(b, 2)*PolyLog(2, 1 - 2Power(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*Power(b, 2)*PolyLog(2, 1 - 2Power(1 - x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*Power(b, 2)*PolyLog(2, 1 - 2Power(1 - x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*Power(-1, 3Power(4, -1))*Power(Sqrt(c), -1) + d*Power(b, 2)*Power(-1, 3Power(4, -1))*Power(Sqrt(c), -1)*Power(atan(x*Sqrt(c)*Power(-1, 3Power(4, -1))), 2) + I*a*b*d*x*Log(1 - I*c*Power(x, 2)) + d*x*Log(1 + I*c*Power(x, 2))*Log(1 - I*c*Power(x, 2))*Power(b, 2)*Power(2, -1) + d*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Log((x*Sqrt(c) + Power(-1, Power(4, -1)))*Sqrt(2)*Power(1 + x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*Log(1 - I*c*Power(x, 2))*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*Log((1 - I)*(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(1 + x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Log((1 + I)*(1 + x*Sqrt(c)*Power(-1, Power(4, -1)))*Power(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*Log(1 + I*c*Power(x, 2))*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + d*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Log(-(x*Sqrt(c) + Power(-1, 3Power(4, -1)))*Sqrt(2)*Power(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + 2a*b*d*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(-1, 3Power(4, -1))*Power(Sqrt(c), -1) + 2d*Log(2Power(1 - x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) + 2d*Log(2Power(1 - x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) - d*x*Power(b, 2)*Power(Log(1 + I*c*Power(x, 2)), 2)*Power(4, -1) - d*x*Power(b, 2)*Power(Log(1 - I*c*Power(x, 2)), 2)*Power(4, -1) - d*Power(b, 2)*PolyLog(2, 1 + (x*Sqrt(c) + Power(-1, 3Power(4, -1)))*Sqrt(2)*Power(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*Power(2Sqrt(c), -1)*Power(-1, Power(4, -1)) - d*Power(b, 2)*PolyLog(2, 1 - (1 + I)*(1 + x*Sqrt(c)*Power(-1, Power(4, -1)))*Power(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*Power(2Sqrt(c), -1)*Power(-1, Power(4, -1)) - d*Power(b, 2)*Power(Sqrt(c), -1)*Power(atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1))), 2)*Power(-1, Power(4, -1)) - d*Power(b, 2)*PolyLog(2, 1 - (1 - I)*(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(1 + x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*Power(2Sqrt(c), -1)*Power(-1, 3Power(4, -1)) - d*Power(b, 2)*PolyLog(2, 1 - (x*Sqrt(c) + Power(-1, Power(4, -1)))*Sqrt(2)*Power(1 + x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*Power(2Sqrt(c), -1)*Power(-1, 3Power(4, -1)) - I*a*b*d*x*Log(1 + I*c*Power(x, 2)) - d*Log(1 - I*c*Power(x, 2))*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) - 2a*b*d*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(-1, 3Power(4, -1))*Power(Sqrt(c), -1) - d*Log(1 + I*c*Power(x, 2))*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) - 2d*Log(2Power(1 + x*Sqrt(c)*Power(-1, 3Power(4, -1)), -1))*atanh(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1)) - 2d*Log(2Power(1 + x*Sqrt(c)*Power(-1, Power(4, -1)), -1))*atan(x*Sqrt(c)*Power(-1, 3Power(4, -1)))*Power(b, 2)*Power(Sqrt(c), -1)*Power(-1, Power(4, -1))

# line nr: 53
@test integrate(Power(a + b*atan(c*Power(x, 2)), 2)*Power(Power(d + e*x, 1), -1), x) == Unintegrable(Power(d + e*x, -1)*Power(a + b*atan(c*Power(x, 2)), 2), x)

# line nr: 54
@test integrate(Power(a + b*atan(c*Power(x, 2)), 2)*Power(Power(d + e*x, 2), -1), x) == Unintegrable(Power(a + b*atan(c*Power(x, 2)), 2)*Power(Power(d + e*x, 2), -1), x)

# line nr: 65
@test integrate((a + b*atan(c*Power(x, 3)))*Power(d + e*x, 2), x) == (a + b*atan(c*Power(x, 3)))*Power(d + e*x, 3)*Power(3e, -1) + b*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2))*Power(d, 2)*Power(2Power(c, Power(3, -1)), -1) + b*d*e*atan(Sqrt(3) - 2x*Power(c, Power(3, -1)))*Power(2Power(c, 2Power(3, -1)), -1) + b*atan((1 - 2Power(c, 2Power(3, -1))*Power(x, 2))*Power(Sqrt(3), -1))*Sqrt(3)*Power(d, 2)*Power(2Power(c, Power(3, -1)), -1) + b*d*e*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2) + x*Sqrt(3)*Power(c, Power(3, -1)))*Sqrt(3)*Power(4Power(c, 2Power(3, -1)), -1) - b*Log(1 + Power(c, 4Power(3, -1))*Power(x, 4) - Power(c, 2Power(3, -1))*Power(x, 2))*Power(d, 2)*Power(4Power(c, Power(3, -1)), -1) - b*atan(c*Power(x, 3))*Power(d, 3)*Power(3e, -1) - b*Log(1 + Power(c, 2)*Power(x, 6))*Power(e, 2)*Power(6c, -1) - b*d*e*atan(2x*Power(c, Power(3, -1)) + Sqrt(3))*Power(2Power(c, 2Power(3, -1)), -1) - b*d*e*atan(x*Power(c, Power(3, -1)))*Power(Power(c, 2Power(3, -1)), -1) - b*d*e*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2) - x*Sqrt(3)*Power(c, Power(3, -1)))*Sqrt(3)*Power(4Power(c, 2Power(3, -1)), -1)

# line nr: 66
@test integrate((a + b*atan(c*Power(x, 3)))*Power(d + e*x, 1), x) == (a + b*atan(c*Power(x, 3)))*Power(d + e*x, 2)*Power(2e, -1) + b*e*atan(Sqrt(3) - 2x*Power(c, Power(3, -1)))*Power(4Power(c, 2Power(3, -1)), -1) + b*d*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2))*Power(2Power(c, Power(3, -1)), -1) + b*d*atan((1 - 2Power(c, 2Power(3, -1))*Power(x, 2))*Power(Sqrt(3), -1))*Sqrt(3)*Power(2Power(c, Power(3, -1)), -1) + b*e*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2) + x*Sqrt(3)*Power(c, Power(3, -1)))*Sqrt(3)*Power(8Power(c, 2Power(3, -1)), -1) - b*e*atan(x*Power(c, Power(3, -1)))*Power(2Power(c, 2Power(3, -1)), -1) - b*d*Log(1 + Power(c, 4Power(3, -1))*Power(x, 4) - Power(c, 2Power(3, -1))*Power(x, 2))*Power(4Power(c, Power(3, -1)), -1) - b*e*atan(2x*Power(c, Power(3, -1)) + Sqrt(3))*Power(4Power(c, 2Power(3, -1)), -1) - b*atan(c*Power(x, 3))*Power(d, 2)*Power(2e, -1) - b*e*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2) - x*Sqrt(3)*Power(c, Power(3, -1)))*Sqrt(3)*Power(8Power(c, 2Power(3, -1)), -1)

# line nr: 67
@test integrate((a + b*atan(c*Power(x, 3)))*Power(Power(d + e*x, 1), -1), x) == (a + b*atan(c*Power(x, 3)))*Log(d + e*x)*Power(e, -1) + b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(e + d*Power(-Power(c, 2), Power(6, -1)), -1)*Power(-Power(c, 2), Power(6, -1))) + b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(d*Power(-Power(c, 2), Power(6, -1)) + e*Power(-1, 2Power(3, -1)), -1)*Power(-Power(c, 2), Power(6, -1))) + b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(d*Power(-Power(c, 2), Power(6, -1)) - e*Power(-1, Power(3, -1)), -1)*Power(-Power(c, 2), Power(6, -1))) + b*c*Log(d + e*x)*Log(e*(1 - x*Power(-Power(c, 2), Power(6, -1)))*Power(e + d*Power(-Power(c, 2), Power(6, -1)), -1))*Power(2e*Sqrt(-Power(c, 2)), -1) + b*c*Log(d + e*x)*Log(-e*(x*Power(-Power(c, 2), Power(6, -1)) + Power(-1, Power(3, -1)))*Power(d*Power(-Power(c, 2), Power(6, -1)) - e*Power(-1, Power(3, -1)), -1))*Power(2e*Sqrt(-Power(c, 2)), -1) + b*c*Log(d + e*x)*Log(e*(1 + x*Power(-Power(c, 2), Power(6, -1))*Power(-1, Power(3, -1)))*Power(d*Power(-Power(c, 2), Power(6, -1)) + e*Power(-1, 2Power(3, -1)), -1)*Power(-1, 2Power(3, -1)))*Power(2e*Sqrt(-Power(c, 2)), -1) - b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(d*Power(-Power(c, 2), Power(6, -1)) - e, -1)*Power(-Power(c, 2), Power(6, -1))) - b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(d*Power(-Power(c, 2), Power(6, -1)) + e*Power(-1, Power(3, -1)), -1)*Power(-Power(c, 2), Power(6, -1))) - b*c*Power(2e*Sqrt(-Power(c, 2)), -1)*PolyLog(2, (d + e*x)*Power(d*Power(-Power(c, 2), Power(6, -1)) - e*Power(-1, 2Power(3, -1)), -1)*Power(-Power(c, 2), Power(6, -1))) - b*c*Log(d + e*x)*Log(-e*(1 + x*Power(-Power(c, 2), Power(6, -1)))*Power(d*Power(-Power(c, 2), Power(6, -1)) - e, -1))*Power(2e*Sqrt(-Power(c, 2)), -1) - b*c*Log(d + e*x)*Log(-e*(x*Power(-Power(c, 2), Power(6, -1)) + Power(-1, 2Power(3, -1)))*Power(d*Power(-Power(c, 2), Power(6, -1)) - e*Power(-1, 2Power(3, -1)), -1))*Power(2e*Sqrt(-Power(c, 2)), -1) - b*c*Log(d + e*x)*Log(e*(1 + x*Power(-Power(c, 2), Power(6, -1))*Power(-1, 2Power(3, -1)))*Power(d*Power(-Power(c, 2), Power(6, -1)) + e*Power(-1, Power(3, -1)), -1)*Power(-1, Power(3, -1)))*Power(2e*Sqrt(-Power(c, 2)), -1)

# line nr: 68
@test integrate((a + b*atan(c*Power(x, 3)))*Power(Power(d + e*x, 2), -1), x) == b*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2))*Power(c, 5Power(3, -1))*Power(d, 4)*Power(2Power(e, 6) + 2Power(c, 2)*Power(d, 6), -1) + b*atan(c*Power(x, 3))*Power(c, 2)*Power(d, 5)*Power(e*(Power(c, 2)*Power(d, 6) + Power(e, 6)), -1) + b*e*(Sqrt(-Power(c, 2))*Power(d, 3) + Power(e, 3))*Log(Power(-Power(c, 2), Power(6, -1)) - x*Power(c, 2Power(3, -1)))*Power(c, 5Power(3, -1))*Power(2(Power(c, 2)*Power(d, 6) + Power(e, 6))*Power(-Power(c, 2), 2Power(3, -1)), -1) + b*e*(Sqrt(-Power(c, 2))*Power(d, 3) - Power(e, 3))*Log(Power(c, 4Power(3, -1))*Power(x, 2) + Power(-Power(c, 2), Power(3, -1)) - x*Power(c, 2Power(3, -1))*Power(-Power(c, 2), Power(6, -1)))*Power(c, 5Power(3, -1))*Power(4(Power(c, 2)*Power(d, 6) + Power(e, 6))*Power(-Power(c, 2), 2Power(3, -1)), -1) + b*d*(c*Sqrt(3)*Power(d, 3) - Power(e, 3))*atan(2x*Power(c, Power(3, -1)) + Sqrt(3))*Power(c, 2Power(3, -1))*Power(2Power(e, 6) + 2Power(c, 2)*Power(d, 6), -1) + b*d*(c*Sqrt(3)*Power(d, 3) + Power(e, 3))*atan(Sqrt(3) - 2x*Power(c, Power(3, -1)))*Power(c, 2Power(3, -1))*Power(2Power(e, 6) + 2Power(c, 2)*Power(d, 6), -1) + 3b*c*Log(d + e*x)*Power(d, 2)*Power(e, 2)*Power(Power(c, 2)*Power(d, 6) + Power(e, 6), -1) + b*e*(Sqrt(-Power(c, 2))*Power(d, 3) + Power(e, 3))*atan((1 + 2x*Power(c, 2Power(3, -1))*Power(Power(-Power(c, 2), Power(6, -1)), -1))*Power(Sqrt(3), -1))*Sqrt(3)*Power(c, 5Power(3, -1))*Power(2(Power(c, 2)*Power(d, 6) + Power(e, 6))*Power(-Power(c, 2), 2Power(3, -1)), -1) - (a + b*atan(c*Power(x, 3)))*Power(e*(d + e*x), -1) - b*e*(Sqrt(-Power(c, 2))*Power(d, 3) - Power(e, 3))*Log(x*Power(c, 2Power(3, -1)) + Power(-Power(c, 2), Power(6, -1)))*Power(c, 5Power(3, -1))*Power(2(Power(c, 2)*Power(d, 6) + Power(e, 6))*Power(-Power(c, 2), 2Power(3, -1)), -1) - b*d*atan(x*Power(c, Power(3, -1)))*Power(c, 2Power(3, -1))*Power(e, 3)*Power(Power(c, 2)*Power(d, 6) + Power(e, 6), -1) - b*c*Log(1 + Power(c, 2)*Power(x, 6))*Power(d, 2)*Power(e, 2)*Power(2Power(e, 6) + 2Power(c, 2)*Power(d, 6), -1) - b*d*(c*Power(d, 3) + Sqrt(3)*Power(e, 3))*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2) + x*Sqrt(3)*Power(c, Power(3, -1)))*Power(c, 2Power(3, -1))*Power(4Power(e, 6) + 4Power(c, 2)*Power(d, 6), -1) - b*d*(c*Power(d, 3) - Sqrt(3)*Power(e, 3))*Log(1 + Power(c, 2Power(3, -1))*Power(x, 2) - x*Sqrt(3)*Power(c, Power(3, -1)))*Power(c, 2Power(3, -1))*Power(4Power(e, 6) + 4Power(c, 2)*Power(d, 6), -1) - b*e*(Sqrt(-Power(c, 2))*Power(d, 3) + Power(e, 3))*Log(Power(c, 4Power(3, -1))*Power(x, 2) + x*Power(c, 2Power(3, -1))*Power(-Power(c, 2), Power(6, -1)) + Power(-Power(c, 2), Power(3, -1)))*Power(c, 5Power(3, -1))*Power(4(Power(c, 2)*Power(d, 6) + Power(e, 6))*Power(-Power(c, 2), 2Power(3, -1)), -1) - b*e*(Sqrt(-Power(c, 2))*Power(d, 3) - Power(e, 3))*atan((2x*Power(-Power(c, 2), 5Power(6, -1)) + Power(c, 4Power(3, -1)))*Power(Sqrt(3)*Power(c, 4Power(3, -1)), -1))*Sqrt(3)*Power(c, 5Power(3, -1))*Power(2(Power(c, 2)*Power(d, 6) + Power(e, 6))*Power(-Power(c, 2), 2Power(3, -1)), -1)

