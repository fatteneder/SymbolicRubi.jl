# line nr: 15
@test integrate(x*Power(a + b*Power(sin(x), 2), -1), x) == Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + I*x*Log(1 - b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(2Sqrt(a)*Sqrt(a + b), -1) - Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - I*x*Log(1 - b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(2Sqrt(a)*Sqrt(a + b), -1)

# line nr: 16
@test integrate(Power(x, 2)*Power(a + b*Power(sin(x), 2), -1), x) == I*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + x*Power(2Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + I*Log(1 - b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 2)*Power(2Sqrt(a)*Sqrt(a + b), -1) - I*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - x*Power(2Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - I*Log(1 - b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 2)*Power(2Sqrt(a)*Sqrt(a + b), -1)

# line nr: 17
@test integrate(Power(x, 3)*Power(a + b*Power(sin(x), 2), -1), x) == 3Power(8Sqrt(a)*Sqrt(a + b), -1)*PolyLog(4, b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) + 3Power(x, 2)*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + I*Log(1 - b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 3)*Power(2Sqrt(a)*Sqrt(a + b), -1) + 3I*x*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) - 3Power(8Sqrt(a)*Sqrt(a + b), -1)*PolyLog(4, b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) - 3Power(x, 2)*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - 3I*x*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - I*Log(1 - b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 3)*Power(2Sqrt(a)*Sqrt(a + b), -1)

# line nr: 20
@test integrate(x*Power(Power(a + b*Power(sin(c + d*x), 2), 2), -1), x) == (b + 2a)*PolyLog(2, b*Power(E, 2I*(c + d*x))*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(8Power(a, 3Power(2, -1))*Power(d, 2)*Power(a + b, 3Power(2, -1)), -1) + b*x*sin(2c + 2d*x)*Power(2a*d*(a + b)*(b + 2a - b*cos(2c + 2d*x)), -1) + I*x*(b + 2a)*Log(1 - b*Power(E, 2I*(c + d*x))*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(4d*Power(a, 3Power(2, -1))*Power(a + b, 3Power(2, -1)), -1) - Log(b + 2a - b*cos(2c + 2d*x))*Power(4a*(a + b)*Power(d, 2), -1) - (b + 2a)*PolyLog(2, b*Power(E, 2I*(c + d*x))*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(8Power(a, 3Power(2, -1))*Power(d, 2)*Power(a + b, 3Power(2, -1)), -1) - I*x*(b + 2a)*Log(1 - b*Power(E, 2I*(c + d*x))*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(4d*Power(a, 3Power(2, -1))*Power(a + b, 3Power(2, -1)), -1)

# line nr: 23
@test integrate(x*Sqrt(Power(sin(x), 2)), x) == Sqrt(Power(sin(x), 2)) - x*cot(x)*Sqrt(Power(sin(x), 2))

# line nr: 34
@test integrate(x*Power(a + b*Power(cos(x), 2), -1), x) == Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, -b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + I*x*Log(1 + b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(2Sqrt(a)*Sqrt(a + b), -1) - Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, -b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - I*x*Log(1 + b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(2Sqrt(a)*Sqrt(a + b), -1)

# line nr: 35
@test integrate(Power(x, 2)*Power(a + b*Power(cos(x), 2), -1), x) == x*Power(2Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, -b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + I*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, -b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + I*Log(1 + b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 2)*Power(2Sqrt(a)*Sqrt(a + b), -1) - I*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, -b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - x*Power(2Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, -b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - I*Log(1 + b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 2)*Power(2Sqrt(a)*Sqrt(a + b), -1)

# line nr: 36
@test integrate(Power(x, 3)*Power(a + b*Power(cos(x), 2), -1), x) == 3Power(8Sqrt(a)*Sqrt(a + b), -1)*PolyLog(4, -b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) + I*Log(1 + b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 3)*Power(2Sqrt(a)*Sqrt(a + b), -1) + 3Power(x, 2)*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, -b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) + 3I*x*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, -b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) - 3Power(8Sqrt(a)*Sqrt(a + b), -1)*PolyLog(4, -b*Power(E, 2I*x)*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1)) - 3Power(x, 2)*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(2, -b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - 3I*x*Power(4Sqrt(a)*Sqrt(a + b), -1)*PolyLog(3, -b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1)) - I*Log(1 + b*Power(E, 2I*x)*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(x, 3)*Power(2Sqrt(a)*Sqrt(a + b), -1)

# line nr: 39
@test integrate(x*Power(Power(a + b*Power(cos(c + d*x), 2), 2), -1), x) == (b + 2a)*PolyLog(2, -b*Power(E, 2I*(c + d*x))*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(8Power(a, 3Power(2, -1))*Power(d, 2)*Power(a + b, 3Power(2, -1)), -1) + I*x*(b + 2a)*Log(1 + b*Power(E, 2I*(c + d*x))*Power(b + 2a + 2Sqrt(a)*Sqrt(a + b), -1))*Power(4d*Power(a, 3Power(2, -1))*Power(a + b, 3Power(2, -1)), -1) - Log(b + 2a + b*cos(2c + 2d*x))*Power(4a*(a + b)*Power(d, 2), -1) - (b + 2a)*PolyLog(2, -b*Power(E, 2I*(c + d*x))*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(8Power(a, 3Power(2, -1))*Power(d, 2)*Power(a + b, 3Power(2, -1)), -1) - b*x*sin(2c + 2d*x)*Power(2a*d*(a + b)*(b + 2a + b*cos(2c + 2d*x)), -1) - I*x*(b + 2a)*Log(1 + b*Power(E, 2I*(c + d*x))*Power(b + 2a - 2Sqrt(a)*Sqrt(a + b), -1))*Power(4d*Power(a, 3Power(2, -1))*Power(a + b, 3Power(2, -1)), -1)

