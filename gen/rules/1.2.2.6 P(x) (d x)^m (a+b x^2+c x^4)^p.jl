@rule integrate(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m, ~p), ~x), PolyQ(~Pq, ~x), Not(PolyQ(~Pq, (~x)^2))) 
 Module(List(Set(~q, Expon(~Pq, ~x)), ~k), ((~d)^-1)*integrate(((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^(1 + ~m))*Sum(((~x)^(2 * ~k))*Coeff(~Pq, ~x, 1 + 2 * ~k), List(~k, 0, 1 + (1//2)*(~q - 1))), ~x) + integrate(((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m)*Sum(((~x)^(2 * ~k))*Coeff(~Pq, ~x, 2 * ~k), List(~k, 0, 1 + (1//2)*~q)), ~x))
 end

@rule integrate(~Pq*((~x)^~m)*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~p), ~x), PolyQ(~Pq, (~x)^2), IntegerQ((1//2)*(~m - 1))) 
 (1//2)*Subst(integrate(((~x)^((1//2)*(~m - 1)))*((~a + ~b*~x + ~c*((~x)^2))^~p)*SubstFor((~x)^2, ~Pq, ~x), ~x), ~x, (~x)^2)
 end

@rule integrate(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m), ~x), PolyQ(~Pq, (~x)^2), IGtQ(~p, -2)) 
 integrate(ExpandIntegrand(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x), ~x)
 end

@rule integrate(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m, ~p), ~x), PolyQ(~Pq, (~x)^2), EqQ(Coeff(~Pq, ~x, 0), 0)) 
 ((~d)^-2)*integrate(((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^(2 + ~m))*ExpandToSum(~Pq*((~x)^-2), ~x), ~x)
 end

@rule integrate(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m, ~p), ~x), PolyQ(~Pq, (~x)^2), EqQ(Expon(~Pq, ~x), 4)) 
 With(List(Set(~e, Coeff(~Pq, ~x, 0)), Set(~f, Coeff(~Pq, ~x, 2)), Set(~g, Coeff(~Pq, ~x, 4))), Condition(~e*((~a + ~b*((~x)^2) + ~c*((~x)^4))^(1 + ~p))*((~d*~x)^(1 + ~m))*(((~a)^-1)*((~d)^-1)*((1 + ~m)^-1)), And(EqQ(~a*~f*(1 + ~m) - ~b*~e*(3 + ~m + 2 * ~p), 0), EqQ(~a*~g*(1 + ~m) - ~c*~e*(5 + ~m + 4 * ~p), 0), NeQ(~m, -1))))
 end

@rule integrate(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m, ~p), ~x), PolyQ(~Pq, (~x)^2), GtQ(Expon(~Pq, (~x)^2), 1), EqQ((~b)^2 - 4 * ~a*~c, 0)) 
 ((~a + ~b*((~x)^2) + ~c*((~x)^4))^FracPart(~p))*(((~b + 2 * ~c*((~x)^2))^(-2FracPart(~p)))*((4 * ~c)^(-IntPart(~p))))*integrate(~Pq*((~b + 2 * ~c*((~x)^2))^(2 * ~p))*((~d*~x)^~m), ~x)
 end

@rule integrate(~Pq*((~x)^~m)*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c), ~x), PolyQ(~Pq, (~x)^2), GtQ(Expon(~Pq, (~x)^2), 1), NeQ((~b)^2 - 4 * ~a*~c, 0), LtQ(~p, -1), IGtQ((1//2)*~m, 0)) 
 With(List(Set(~d, Coeff(PolynomialRemainder(~Pq*((~x)^~m), ~a + ~b*((~x)^2) + ~c*((~x)^4), ~x), ~x, 0)), Set(~e, Coeff(PolynomialRemainder(~Pq*((~x)^~m), ~a + ~b*((~x)^2) + ~c*((~x)^4), ~x), ~x, 2))), ((1//2)*((~a)^-1)*((1 + ~p)^-1)*(((~b)^2 - 4 * ~a*~c)^-1))*integrate(((~a + ~b*((~x)^2) + ~c*((~x)^4))^(1 + ~p))*ExpandToSum(~d*((~b)^2)*(3 + 2 * ~p) + ~c*((~x)^2)*(7 + 4 * ~p)*(~b*~d - 2 * ~a*~e) + 2 * ~a*(1 + ~p)*((~b)^2 - 4 * ~a*~c)*PolynomialQuotient(~Pq*((~x)^~m), ~a + ~b*((~x)^2) + ~c*((~x)^4), ~x) - ~a*~b*~e - 2 * ~a*~c*~d*(5 + 4 * ~p), ~x), ~x) + ~x*(~a*~b*~e - ~d*((~b)^2 - 2 * ~a*~c) - ~c*((~x)^2)*(~b*~d - 2 * ~a*~e))*((~a + ~b*((~x)^2) + ~c*((~x)^4))^(1 + ~p))*((1//2)*((~a)^-1)*((1 + ~p)^-1)*(((~b)^2 - 4 * ~a*~c)^-1)))
 end

@rule integrate(~Pq*((~x)^~m)*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p), ~x) =>  if And(FreeQ(List(~a, ~b, ~c), ~x), PolyQ(~Pq, (~x)^2), GtQ(Expon(~Pq, (~x)^2), 1), NeQ((~b)^2 - 4 * ~a*~c, 0), LtQ(~p, -1), ILtQ((1//2)*~m, 0)) 
 With(List(Set(~d, Coeff(PolynomialRemainder(~Pq*((~x)^~m), ~a + ~b*((~x)^2) + ~c*((~x)^4), ~x), ~x, 0)), Set(~e, Coeff(PolynomialRemainder(~Pq*((~x)^~m), ~a + ~b*((~x)^2) + ~c*((~x)^4), ~x), ~x, 2))), ((1//2)*((~a)^-1)*((1 + ~p)^-1)*(((~b)^2 - 4 * ~a*~c)^-1))*integrate(((~x)^~m)*((~a + ~b*((~x)^2) + ~c*((~x)^4))^(1 + ~p))*ExpandToSum((~d*((~b)^2)*(3 + 2 * ~p) - ~a*~b*~e - 2 * ~a*~c*~d*(5 + 4 * ~p))*((~x)^(-~m)) + ~c*((~x)^(2 - ~m))*(7 + 4 * ~p)*(~b*~d - 2 * ~a*~e) + 2 * ~a*(1 + ~p)*((~x)^(-~m))*((~b)^2 - 4 * ~a*~c)*PolynomialQuotient(~Pq*((~x)^~m), ~a + ~b*((~x)^2) + ~c*((~x)^4), ~x), ~x), ~x) + ~x*(~a*~b*~e - ~d*((~b)^2 - 2 * ~a*~c) - ~c*((~x)^2)*(~b*~d - 2 * ~a*~e))*((~a + ~b*((~x)^2) + ~c*((~x)^4))^(1 + ~p))*((1//2)*((~a)^-1)*((1 + ~p)^-1)*(((~b)^2 - 4 * ~a*~c)^-1)))
 end

@rule integrate(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~m, ~p), ~x), PolyQ(~Pq, ~x)) 
 Unintegrable(~Pq*((~a + ~b*((~x)^2) + ~c*((~x)^4))^~p)*((~d*~x)^~m), ~x)
 end

