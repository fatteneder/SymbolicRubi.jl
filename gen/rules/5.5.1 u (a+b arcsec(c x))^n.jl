@rule integrate(ArcSec(~c*~x), ~x) =>  if FreeQ(~c, ~x) 
 ~x*ArcSec(~c*~x) - ((~c)^-1)*integrate((~x*Sqrt(1 - ((~c)^-2)*((~x)^-2)))^-1, ~x)
 end

@rule integrate(ArcCsc(~c*~x), ~x) =>  if FreeQ(~c, ~x) 
 ~x*ArcCsc(~c*~x) + ((~c)^-1)*integrate((~x*Sqrt(1 - ((~c)^-2)*((~x)^-2)))^-1, ~x)
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))^~n, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~n), ~x), IGtQ(~n, 0)) 
 ((~c)^-1)*Subst(integrate(((~a + ~b*~x)^~n)*tan(~x)*Sec(~x), ~x), ~x, ArcSec(~c*~x))
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))^~n, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~n), ~x), IGtQ(~n, 0)) 
 -((~c)^-1)*Subst(integrate(((~a + ~b*~x)^~n)*cot(~x)*Csc(~x), ~x), ~x, ArcCsc(~c*~x))
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))*((~x)^-1), ~x) =>  if FreeQ(List(~a, ~b, ~c), ~x) 
 -Subst(integrate((~a + ~b*ArcCos(~x*((~c)^-1)))*((~x)^-1), ~x), ~x, (~x)^-1)
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))*((~x)^-1), ~x) =>  if FreeQ(List(~a, ~b, ~c), ~x) 
 -Subst(integrate((~a + ~b*ArcSin(~x*((~c)^-1)))*((~x)^-1), ~x), ~x, (~x)^-1)
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m), ~x), NeQ(~m, -1)) 
 (~a + ~b*ArcSec(~c*~x))*(((~d)^-1)*((1 + ~m)^-1))*((~d*~x)^(1 + ~m)) - ~b*~d*(((~c)^-1)*((1 + ~m)^-1))*integrate(((~d*~x)^(~m - 1))*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1), ~x)
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m), ~x), NeQ(~m, -1)) 
 (~a + ~b*ArcCsc(~c*~x))*(((~d)^-1)*((1 + ~m)^-1))*((~d*~x)^(1 + ~m)) + ~b*~d*(((~c)^-1)*((1 + ~m)^-1))*integrate(((~d*~x)^(~m - 1))*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1), ~x)
 end

@rule integrate(((~x)^~m)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c), ~x), IntegerQ(~n), IntegerQ(~m), Or(GtQ(~n, 0), LtQ(~m, -1))) 
 ((~c)^(-1 - ~m))*Subst(integrate(((~a + ~b*~x)^~n)*(Sec(~x)^(1 + ~m))*tan(~x), ~x), ~x, ArcSec(~c*~x))
 end

@rule integrate(((~x)^~m)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c), ~x), IntegerQ(~n), IntegerQ(~m), Or(GtQ(~n, 0), LtQ(~m, -1))) 
 -((~c)^(-1 - ~m))*Subst(integrate(((~a + ~b*~x)^~n)*(Csc(~x)^(1 + ~m))*cot(~x), ~x), ~x, ArcCsc(~c*~x))
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))*((~d + ~e*~x)^-1), ~x) =>  if FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x) 
 ~b*(((~c)^-1)*((~e)^-1))*integrate((((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1))*Log(1 + (~E)^(2 * ~I*ArcSec(~c*~x))), ~x) + (~a + ~b*ArcSec(~c*~x))*((~e)^-1)*Log(1 + ((~E)^(~I*ArcSec(~c*~x)))*(~e - Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))) + (~a + ~b*ArcSec(~c*~x))*((~e)^-1)*Log(1 + ((~E)^(~I*ArcSec(~c*~x)))*(~e + Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))) - ~b*(((~c)^-1)*((~e)^-1))*integrate((((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1))*Log(1 + ((~E)^(~I*ArcSec(~c*~x)))*(~e - Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))), ~x) - ~b*(((~c)^-1)*((~e)^-1))*integrate((((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1))*Log(1 + ((~E)^(~I*ArcSec(~c*~x)))*(~e + Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))), ~x) - (~a + ~b*ArcSec(~c*~x))*((~e)^-1)*Log(1 + (~E)^(2 * ~I*ArcSec(~c*~x)))
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))*((~d + ~e*~x)^-1), ~x) =>  if FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x) 
 (~a + ~b*ArcCsc(~c*~x))*((~e)^-1)*Log(1 - ~I*((~E)^(~I*ArcCsc(~c*~x)))*(~e - Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))) + (~a + ~b*ArcCsc(~c*~x))*((~e)^-1)*Log(1 - ~I*((~E)^(~I*ArcCsc(~c*~x)))*(~e + Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))) + ~b*(((~c)^-1)*((~e)^-1))*integrate((((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1))*Log(1 - ~I*((~E)^(~I*ArcCsc(~c*~x)))*(~e - Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))), ~x) + ~b*(((~c)^-1)*((~e)^-1))*integrate((((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1))*Log(1 - ~I*((~E)^(~I*ArcCsc(~c*~x)))*(~e + Sqrt((~e)^2 - ((~c)^2)*((~d)^2)))*(((~c)^-1)*((~d)^-1))), ~x) - ~b*(((~c)^-1)*((~e)^-1))*integrate((((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1))*Log(1 - ((~E)^(2 * ~I*ArcCsc(~c*~x)))), ~x) - (~a + ~b*ArcCsc(~c*~x))*((~e)^-1)*Log(1 - ((~E)^(2 * ~I*ArcCsc(~c*~x))))
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))*((~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m), ~x), NeQ(~m, -1)) 
 (~a + ~b*ArcSec(~c*~x))*((~d + ~e*~x)^(1 + ~m))*(((~e)^-1)*((1 + ~m)^-1)) - ~b*(((~c)^-1)*((~e)^-1)*((1 + ~m)^-1))*integrate(((~d + ~e*~x)^(1 + ~m))*(((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1)), ~x)
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))*((~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m), ~x), NeQ(~m, -1)) 
 (~a + ~b*ArcCsc(~c*~x))*((~d + ~e*~x)^(1 + ~m))*(((~e)^-1)*((1 + ~m)^-1)) + ~b*(((~c)^-1)*((~e)^-1)*((1 + ~m)^-1))*integrate(((~d + ~e*~x)^(1 + ~m))*(((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1)), ~x)
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))*((~d + ~e*((~x)^2))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x), Or(IGtQ(~p, 0), ILtQ(~p + 2^-1, 0))) 
 With(List(Set(~u, IntHide((~d + ~e*((~x)^2))^~p, ~x))), Dist(~a + ~b*ArcSec(~c*~x), ~u, ~x) - ~b*~c*~x*(Sqrt(((~c)^2)*((~x)^2))^-1)*integrate(SimplifyIntegrand(~u*(((~x)^-1)*(Sqrt(((~c)^2)*((~x)^2) - 1)^-1)), ~x), ~x))
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))*((~d + ~e*((~x)^2))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x), Or(IGtQ(~p, 0), ILtQ(~p + 2^-1, 0))) 
 With(List(Set(~u, IntHide((~d + ~e*((~x)^2))^~p, ~x))), ~b*~c*~x*(Sqrt(((~c)^2)*((~x)^2))^-1)*integrate(SimplifyIntegrand(~u*(((~x)^-1)*(Sqrt(((~c)^2)*((~x)^2) - 1)^-1)), ~x), ~x) + Dist(~a + ~b*ArcCsc(~c*~x), ~u, ~x))
 end

@rule integrate(((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), IntegerQ(~p)) 
 -Subst(integrate(((~x)^(-2 - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcCos(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), IntegerQ(~p)) 
 -Subst(integrate(((~x)^(-2 - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcSin(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~p + 2^-1), GtQ(~e, 0), LtQ(~d, 0)) 
 -((~x)^-1)*Sqrt((~x)^2)*Subst(integrate(((~x)^(-2 - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcCos(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~p + 2^-1), GtQ(~e, 0), LtQ(~d, 0)) 
 -((~x)^-1)*Sqrt((~x)^2)*Subst(integrate(((~x)^(-2 - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcSin(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~p + 2^-1), Not(And(GtQ(~e, 0), LtQ(~d, 0)))) 
 -(((~x)^-1)*(Sqrt(~e + ~d*((~x)^-2))^-1))*Sqrt(~d + ~e*((~x)^2))*Subst(integrate(((~x)^(-2 - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcCos(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~p + 2^-1), Not(And(GtQ(~e, 0), LtQ(~d, 0)))) 
 -(((~x)^-1)*(Sqrt(~e + ~d*((~x)^-2))^-1))*Sqrt(~d + ~e*((~x)^2))*Subst(integrate(((~x)^(-2 - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcSin(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(~x*(~a + ~b*ArcSec(~c*~x))*((~d + ~e*((~x)^2))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~p), ~x), NeQ(~p, -1)) 
 (~a + ~b*ArcSec(~c*~x))*((~d + ~e*((~x)^2))^(1 + ~p))*((1//2)*((~e)^-1)*((1 + ~p)^-1)) - ~b*~c*~x*((1//2)*((~e)^-1)*((1 + ~p)^-1)*(Sqrt(((~c)^2)*((~x)^2))^-1))*integrate(((~d + ~e*((~x)^2))^(1 + ~p))*(((~x)^-1)*(Sqrt(((~c)^2)*((~x)^2) - 1)^-1)), ~x)
 end

@rule integrate(~x*(~a + ~b*ArcCsc(~c*~x))*((~d + ~e*((~x)^2))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~p), ~x), NeQ(~p, -1)) 
 (~a + ~b*ArcCsc(~c*~x))*((~d + ~e*((~x)^2))^(1 + ~p))*((1//2)*((~e)^-1)*((1 + ~p)^-1)) + ~b*~c*~x*((1//2)*((~e)^-1)*((1 + ~p)^-1)*(Sqrt(((~c)^2)*((~x)^2))^-1))*integrate(((~d + ~e*((~x)^2))^(1 + ~p))*(((~x)^-1)*(Sqrt(((~c)^2)*((~x)^2) - 1)^-1)), ~x)
 end

@rule integrate((~a + ~b*ArcSec(~c*~x))*((~d + ~e*((~x)^2))^~p)*((~f*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p), ~x), Or(And(IGtQ(~p, 0), Not(And(ILtQ((1//2)*(~m - 1), 0), GtQ(3 + ~m + 2 * ~p, 0)))), And(IGtQ((1//2)*(1 + ~m), 0), Not(And(ILtQ(~p, 0), GtQ(3 + ~m + 2 * ~p, 0)))), And(ILtQ((1//2)*(1 + ~m + 2 * ~p), 0), Not(ILtQ((1//2)*(~m - 1), 0))))) 
 With(List(Set(~u, IntHide(((~d + ~e*((~x)^2))^~p)*((~f*~x)^~m), ~x))), Dist(~a + ~b*ArcSec(~c*~x), ~u, ~x) - ~b*~c*~x*(Sqrt(((~c)^2)*((~x)^2))^-1)*integrate(SimplifyIntegrand(~u*(((~x)^-1)*(Sqrt(((~c)^2)*((~x)^2) - 1)^-1)), ~x), ~x))
 end

@rule integrate((~a + ~b*ArcCsc(~c*~x))*((~d + ~e*((~x)^2))^~p)*((~f*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p), ~x), Or(And(IGtQ(~p, 0), Not(And(ILtQ((1//2)*(~m - 1), 0), GtQ(3 + ~m + 2 * ~p, 0)))), And(IGtQ((1//2)*(1 + ~m), 0), Not(And(ILtQ(~p, 0), GtQ(3 + ~m + 2 * ~p, 0)))), And(ILtQ((1//2)*(1 + ~m + 2 * ~p), 0), Not(ILtQ((1//2)*(~m - 1), 0))))) 
 With(List(Set(~u, IntHide(((~d + ~e*((~x)^2))^~p)*((~f*~x)^~m), ~x))), ~b*~c*~x*(Sqrt(((~c)^2)*((~x)^2))^-1)*integrate(SimplifyIntegrand(~u*(((~x)^-1)*(Sqrt(((~c)^2)*((~x)^2) - 1)^-1)), ~x), ~x) + Dist(~a + ~b*ArcCsc(~c*~x), ~u, ~x))
 end

@rule integrate(((~x)^~m)*((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), IntegerQ(~m), IntegerQ(~p)) 
 -Subst(integrate(((~x)^(-2 - ~m - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcCos(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~x)^~m)*((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), IntegerQ(~m), IntegerQ(~p)) 
 -Subst(integrate(((~x)^(-2 - ~m - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcSin(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~x)^~m)*((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~m), IntegerQ(~p + 2^-1), GtQ(~e, 0), LtQ(~d, 0)) 
 -((~x)^-1)*Sqrt((~x)^2)*Subst(integrate(((~x)^(-2 - ~m - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcCos(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~x)^~m)*((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~m), IntegerQ(~p + 2^-1), GtQ(~e, 0), LtQ(~d, 0)) 
 -((~x)^-1)*Sqrt((~x)^2)*Subst(integrate(((~x)^(-2 - ~m - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcSin(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~x)^~m)*((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~m), IntegerQ(~p + 2^-1), Not(And(GtQ(~e, 0), LtQ(~d, 0)))) 
 -(((~x)^-1)*(Sqrt(~e + ~d*((~x)^-2))^-1))*Sqrt(~d + ~e*((~x)^2))*Subst(integrate(((~x)^(-2 - ~m - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcCos(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(((~x)^~m)*((~d + ~e*((~x)^2))^~p)*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), IGtQ(~n, 0), EqQ(~e + ~d*((~c)^2), 0), IntegerQ(~m), IntegerQ(~p + 2^-1), Not(And(GtQ(~e, 0), LtQ(~d, 0)))) 
 -(((~x)^-1)*(Sqrt(~e + ~d*((~x)^-2))^-1))*Sqrt(~d + ~e*((~x)^2))*Subst(integrate(((~x)^(-2 - ~m - 2 * ~p))*((~e + ~d*((~x)^2))^~p)*((~a + ~b*ArcSin(~x*((~c)^-1)))^~n), ~x), ~x, (~x)^-1)
 end

@rule integrate(~u*(~a + ~b*ArcSec(~c*~x)), ~x) =>  if FreeQ(List(~a, ~b, ~c), ~x) 
 With(List(Set(~v, IntHide(~u, ~x))), Condition(Dist(~a + ~b*ArcSec(~c*~x), ~v, ~x) - ~b*((~c)^-1)*integrate(SimplifyIntegrand(~v*(((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1)), ~x), ~x), InverseFunctionFreeQ(~v, ~x)))
 end

@rule integrate(~u*(~a + ~b*ArcCsc(~c*~x)), ~x) =>  if FreeQ(List(~a, ~b, ~c), ~x) 
 With(List(Set(~v, IntHide(~u, ~x))), Condition(~b*((~c)^-1)*integrate(SimplifyIntegrand(~v*(((~x)^-2)*(Sqrt(1 - ((~c)^-2)*((~x)^-2))^-1)), ~x), ~x) + Dist(~a + ~b*ArcCsc(~c*~x), ~v, ~x), InverseFunctionFreeQ(~v, ~x)))
 end

@rule integrate(~u*((~a + ~b*ArcSec(~c*~x))^~n), ~x) =>  if FreeQ(List(~a, ~b, ~c, ~n), ~x) 
 Unintegrable(~u*((~a + ~b*ArcSec(~c*~x))^~n), ~x)
 end

@rule integrate(~u*((~a + ~b*ArcCsc(~c*~x))^~n), ~x) =>  if FreeQ(List(~a, ~b, ~c, ~n), ~x) 
 Unintegrable(~u*((~a + ~b*ArcCsc(~c*~x))^~n), ~x)
 end

