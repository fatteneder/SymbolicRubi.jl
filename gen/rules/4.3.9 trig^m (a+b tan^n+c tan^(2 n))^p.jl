@rule integrate((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~p)) 
 (((~c)^(-~p))*(4^(-~p)))*integrate((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(2 * ~p), ~x)
 end

@rule integrate((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~p)) 
 (((~c)^(-~p))*(4^(-~p)))*integrate((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(2 * ~p), ~x)
 end

@rule integrate((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~p))) 
 ((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(-2 * ~p))*((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^(2 * ~n)))^~p)*integrate((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(2 * ~p), ~x)
 end

@rule integrate((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~p))) 
 ((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(-2 * ~p))*((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^(2 * ~n)))^~p)*integrate((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(2 * ~p), ~x)
 end

@rule integrate((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^-1, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), EqQ(~n2, 2 * ~n), NeQ((~b)^2 - 4 * ~a*~c, 0)) 
 Module(List(Set(~q, Rt((~b)^2 - 4 * ~a*~c, 2))), 2 * ~c*((~q)^-1)*integrate((~b + 2 * ~c*(tan(~d + ~e*~x)^~n) - ~q)^-1, ~x) - 2 * ~c*((~q)^-1)*integrate((~b + ~q + 2 * ~c*(tan(~d + ~e*~x)^~n))^-1, ~x))
 end

@rule integrate((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^-1, ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~n), ~x), EqQ(~n2, 2 * ~n), NeQ((~b)^2 - 4 * ~a*~c, 0)) 
 Module(List(Set(~q, Rt((~b)^2 - 4 * ~a*~c, 2))), 2 * ~c*((~q)^-1)*integrate((~b + 2 * ~c*(cot(~d + ~e*~x)^~n) - ~q)^-1, ~x) - 2 * ~c*((~q)^-1)*integrate((~b + ~q + 2 * ~c*(cot(~d + ~e*~x)^~n))^-1, ~x))
 end

@rule integrate(((~a + ~b*((~f*tan(~d + ~e*~x))^~n) + ~c*((~f*tan(~d + ~e*~x))^~n2))^~p)*(sin(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*~m)) 
 ~f*((~e)^-1)*Subst(integrate(((~x)^~m)*(((~f)^2 + (~x)^2)^(-1 - (1//2)*~m))*((~a + ~b*((~x)^~n) + ~c*((~x)^(2 * ~n)))^~p), ~x), ~x, ~f*tan(~d + ~e*~x))
 end

@rule integrate(((~a + ~b*((~f*cot(~d + ~e*~x))^~n) + ~c*((~f*cot(~d + ~e*~x))^~n2))^~p)*(cos(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*~m)) 
 -~f*((~e)^-1)*Subst(integrate(((~x)^~m)*(((~f)^2 + (~x)^2)^(-1 - (1//2)*~m))*((~a + ~b*((~x)^~n) + ~c*((~x)^(2 * ~n)))^~p), ~x), ~x, ~f*cot(~d + ~e*~x))
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(sin(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*(~m - 1)), IntegerQ((1//2)*~n), IntegerQ(~p)) 
 Module(List(Set(~g, FreeFactors(cos(~d + ~e*~x), ~x))), -~g*((~e)^-1)*Subst(integrate(((1 - ((~g)^2)*((~x)^2))^((1//2)*(~m - 1)))*((~g*~x)^(-2 * ~n*~p))*(ExpandToSum(~c*((1 - ((~g)^2)*((~x)^2))^~n) + ~a*((~g*~x)^(2 * ~n)) + ~b*((1 - ((~g)^2)*((~x)^2))^((1//2)*~n))*((~g*~x)^~n), ~x)^~p), ~x), ~x, ((~g)^-1)*cos(~d + ~e*~x)))
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(cos(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*(~m - 1)), IntegerQ((1//2)*~n), IntegerQ(~p)) 
 Module(List(Set(~g, FreeFactors(sin(~d + ~e*~x), ~x))), ~g*((~e)^-1)*Subst(integrate(((1 - ((~g)^2)*((~x)^2))^((1//2)*(~m - 1)))*((~g*~x)^(-2 * ~n*~p))*(ExpandToSum(~c*((1 - ((~g)^2)*((~x)^2))^~n) + ~a*((~g*~x)^(2 * ~n)) + ~b*((1 - ((~g)^2)*((~x)^2))^((1//2)*~n))*((~g*~x)^~n), ~x)^~p), ~x), ~x, ((~g)^-1)*sin(~d + ~e*~x)))
 end

@rule integrate(((~a + ~b*((~f*tan(~d + ~e*~x))^~n) + ~c*((~f*tan(~d + ~e*~x))^~n2))^~p)*(cos(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*~m)) 
 ((~e)^-1)*((~f)^(1 + ~m))*Subst(integrate((((~f)^2 + (~x)^2)^(-1 - (1//2)*~m))*((~a + ~b*((~x)^~n) + ~c*((~x)^(2 * ~n)))^~p), ~x), ~x, ~f*tan(~d + ~e*~x))
 end

@rule integrate(((~a + ~b*((~f*cot(~d + ~e*~x))^~n) + ~c*((~f*cot(~d + ~e*~x))^~n2))^~p)*(sin(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*~m)) 
 -((~e)^-1)*((~f)^(1 + ~m))*Subst(integrate((((~f)^2 + (~x)^2)^(-1 - (1//2)*~m))*((~a + ~b*((~x)^~n) + ~c*((~x)^(2 * ~n)))^~p), ~x), ~x, ~f*cot(~d + ~e*~x))
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(cos(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*(~m - 1)), IntegerQ((1//2)*~n), IntegerQ(~p)) 
 Module(List(Set(~g, FreeFactors(sin(~d + ~e*~x), ~x))), ~g*((~e)^-1)*Subst(integrate(((1 - ((~g)^2)*((~x)^2))^((1//2)*(~m - 1 - 2 * ~n*~p)))*(ExpandToSum(~c*((~x)^(2 * ~n)) + ~a*((1 - ((~x)^2))^~n) + ~b*((~x)^~n)*((1 - ((~x)^2))^((1//2)*~n)), ~x)^~p), ~x), ~x, ((~g)^-1)*sin(~d + ~e*~x)))
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p)*(sin(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e), ~x), EqQ(~n2, 2 * ~n), IntegerQ((1//2)*(~m - 1)), IntegerQ((1//2)*~n), IntegerQ(~p)) 
 Module(List(Set(~g, FreeFactors(cos(~d + ~e*~x), ~x))), -~g*((~e)^-1)*Subst(integrate(((1 - ((~g)^2)*((~x)^2))^((1//2)*(~m - 1 - 2 * ~n*~p)))*(ExpandToSum(~c*((~x)^(2 * ~n)) + ~a*((1 - ((~x)^2))^~n) + ~b*((~x)^~n)*((1 - ((~x)^2))^((1//2)*~n)), ~x)^~p), ~x), ~x, ((~g)^-1)*cos(~d + ~e*~x)))
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(tan(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~p)) 
 (((~c)^(-~p))*(4^(-~p)))*integrate(((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(2 * ~p))*(tan(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p)*(cot(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~p)) 
 (((~c)^(-~p))*(4^(-~p)))*integrate(((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(2 * ~p))*(cot(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(tan(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~p))) 
 ((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(-2 * ~p))*((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^(2 * ~n)))^~p)*integrate(((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(2 * ~p))*(tan(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p)*(cot(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~p))) 
 ((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(-2 * ~p))*((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^(2 * ~n)))^~p)*integrate(((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(2 * ~p))*(cot(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*((~f*tan(~d + ~e*~x))^~n) + ~c*((~f*tan(~d + ~e*~x))^~n2))^~p)*(tan(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), NeQ((~b)^2 - 4 * ~a*~c, 0)) 
 ~f*((~e)^-1)*Subst(integrate((((~f)^2 + (~x)^2)^-1)*((~a + ~b*((~x)^~n) + ~c*((~x)^(2 * ~n)))^~p)*((~x*((~f)^-1))^~m), ~x), ~x, ~f*tan(~d + ~e*~x))
 end

@rule integrate(((~a + ~b*((~f*cot(~d + ~e*~x))^~n) + ~c*((~f*cot(~d + ~e*~x))^~n2))^~p)*(cot(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), NeQ((~b)^2 - 4 * ~a*~c, 0)) 
 -~f*((~e)^-1)*Subst(integrate((((~f)^2 + (~x)^2)^-1)*((~a + ~b*((~x)^~n) + ~c*((~x)^(2 * ~n)))^~p)*((~x*((~f)^-1))^~m), ~x), ~x, ~f*cot(~d + ~e*~x))
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(cot(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~p)) 
 (((~c)^(-~p))*(4^(-~p)))*integrate(((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(2 * ~p))*(cot(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p)*(tan(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~p)) 
 (((~c)^(-~p))*(4^(-~p)))*integrate(((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(2 * ~p))*(tan(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(cot(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~p))) 
 ((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(-2 * ~p))*((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^(2 * ~n)))^~p)*integrate(((~b + 2 * ~c*(tan(~d + ~e*~x)^~n))^(2 * ~p))*(cot(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p)*(tan(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p), ~x), EqQ(~n2, 2 * ~n), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~p))) 
 ((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(-2 * ~p))*((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^(2 * ~n)))^~p)*integrate(((~b + 2 * ~c*(cot(~d + ~e*~x)^~n))^(2 * ~p))*(tan(~d + ~e*~x)^~m), ~x)
 end

@rule integrate(((~a + ~b*(tan(~d + ~e*~x)^~n) + ~c*(tan(~d + ~e*~x)^~n2))^~p)*(cot(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~p), ~x), EqQ(~n2, 2 * ~n), NeQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ((1//2)*~n)) 
 Module(List(Set(~g, FreeFactors(cot(~d + ~e*~x), ~x))), ~g*((~e)^-1)*Subst(integrate(((1 + ((~g)^2)*((~x)^2))^-1)*((~c + ~b*((~g*~x)^~n) + ~a*((~g*~x)^(2 * ~n)))^~p)*((~g*~x)^(~m - 2 * ~n*~p)), ~x), ~x, ((~g)^-1)*cot(~d + ~e*~x)))
 end

@rule integrate(((~a + ~b*(cot(~d + ~e*~x)^~n) + ~c*(cot(~d + ~e*~x)^~n2))^~p)*(tan(~d + ~e*~x)^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~m, ~p), ~x), EqQ(~n2, 2 * ~n), NeQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ((1//2)*~n)) 
 Module(List(Set(~g, FreeFactors(tan(~d + ~e*~x), ~x))), -~g*((~e)^-1)*Subst(integrate(((1 + ((~g)^2)*((~x)^2))^-1)*((~c + ~b*((~g*~x)^~n) + ~a*((~g*~x)^(2 * ~n)))^~p)*((~g*~x)^(~m - 2 * ~n*~p)), ~x), ~x, ((~g)^-1)*tan(~d + ~e*~x)))
 end

@rule integrate((~A + ~B*tan(~d + ~e*~x))*((~a + ~c*(tan(~d + ~e*~x)^2) + ~b*tan(~d + ~e*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~n)) 
 (((~c)^(-~n))*(4^(-~n)))*integrate((~A + ~B*tan(~d + ~e*~x))*((~b + 2 * ~c*tan(~d + ~e*~x))^(2 * ~n)), ~x)
 end

@rule integrate((~A + ~B*cot(~d + ~e*~x))*((~a + ~b*cot(~d + ~e*~x) + ~c*(cot(~d + ~e*~x)^2))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), EqQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~n)) 
 (((~c)^(-~n))*(4^(-~n)))*integrate((~A + ~B*cot(~d + ~e*~x))*((~b + 2 * ~c*cot(~d + ~e*~x))^(2 * ~n)), ~x)
 end

@rule integrate((~A + ~B*tan(~d + ~e*~x))*((~a + ~c*(tan(~d + ~e*~x)^2) + ~b*tan(~d + ~e*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~n))) 
 ((~b + 2 * ~c*tan(~d + ~e*~x))^(-2 * ~n))*((~a + ~c*(tan(~d + ~e*~x)^2) + ~b*tan(~d + ~e*~x))^~n)*integrate((~A + ~B*tan(~d + ~e*~x))*((~b + 2 * ~c*tan(~d + ~e*~x))^(2 * ~n)), ~x)
 end

@rule integrate((~A + ~B*cot(~d + ~e*~x))*((~a + ~b*cot(~d + ~e*~x) + ~c*(cot(~d + ~e*~x)^2))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), EqQ((~b)^2 - 4 * ~a*~c, 0), Not(IntegerQ(~n))) 
 ((~b + 2 * ~c*cot(~d + ~e*~x))^(-2 * ~n))*((~a + ~b*cot(~d + ~e*~x) + ~c*(cot(~d + ~e*~x)^2))^~n)*integrate((~A + ~B*cot(~d + ~e*~x))*((~b + 2 * ~c*cot(~d + ~e*~x))^(2 * ~n)), ~x)
 end

@rule integrate((~A + ~B*tan(~d + ~e*~x))*((~a + ~c*(tan(~d + ~e*~x)^2) + ~b*tan(~d + ~e*~x))^-1), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), NeQ((~b)^2 - 4 * ~a*~c, 0)) 
 Module(List(Set(~q, Rt((~b)^2 - 4 * ~a*~c, 2))), (~B + ((~q)^-1)*(~B*~b - 2 * ~A*~c))*integrate(Simp(~b + ~q + 2 * ~c*tan(~d + ~e*~x), ~x)^-1, ~x) + (~B - ((~q)^-1)*(~B*~b - 2 * ~A*~c))*integrate(Simp(~b + 2 * ~c*tan(~d + ~e*~x) - ~q, ~x)^-1, ~x))
 end

@rule integrate((~A + ~B*cot(~d + ~e*~x))*((~a + ~b*cot(~d + ~e*~x) + ~c*(cot(~d + ~e*~x)^2))^-1), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), NeQ((~b)^2 - 4 * ~a*~c, 0)) 
 Module(List(Set(~q, Rt((~b)^2 - 4 * ~a*~c, 2))), (~B + ((~q)^-1)*(~B*~b - 2 * ~A*~c))*integrate(Simp(~b + ~q + 2 * ~c*cot(~d + ~e*~x), ~x)^-1, ~x) + (~B - ((~q)^-1)*(~B*~b - 2 * ~A*~c))*integrate(Simp(~b + 2 * ~c*cot(~d + ~e*~x) - ~q, ~x)^-1, ~x))
 end

@rule integrate((~A + ~B*tan(~d + ~e*~x))*((~a + ~c*(tan(~d + ~e*~x)^2) + ~b*tan(~d + ~e*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), NeQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~n)) 
 integrate(ExpandTrig((~A + ~B*tan(~d + ~e*~x))*((~a + ~c*(tan(~d + ~e*~x)^2) + ~b*tan(~d + ~e*~x))^~n), ~x), ~x)
 end

@rule integrate((~A + ~B*cot(~d + ~e*~x))*((~a + ~b*cot(~d + ~e*~x) + ~c*(cot(~d + ~e*~x)^2))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~A, ~B), ~x), NeQ((~b)^2 - 4 * ~a*~c, 0), IntegerQ(~n)) 
 integrate(ExpandTrig((~A + ~B*cot(~d + ~e*~x))*((~a + ~b*cot(~d + ~e*~x) + ~c*(cot(~d + ~e*~x)^2))^~n), ~x), ~x)
 end

