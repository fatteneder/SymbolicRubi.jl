@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~c + ~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), EqQ(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b, 0)) 
 ((~b)^-2)*integrate((~B*~b + ~C*~b*Csc(~e + ~f*~x) - ~C*~a)*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~c + ~d*Csc(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~c + ~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), EqQ(~A*((~b)^2) + ~C*((~a)^2), 0)) 
 -~C*((~b)^-2)*integrate((~a - ~b*Csc(~e + ~f*~x))*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~c + ~d*Csc(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~a + ~b*csc(~e + ~f*~x))*(~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C), ~x), LtQ(~n, -1)) 
 (((~d)^-1)*((~n)^-1))*integrate(((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~n*(~A*~b + ~B*~a) + (~n*(~C*~a + ~B*~b) + ~A*~a*(1 + ~n))*Csc(~e + ~f*~x) + ~C*~b*~n*(Csc(~e + ~f*~x)^2), ~x), ~x) + ~A*~a*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*(~a + ~b*csc(~e + ~f*~x))*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C), ~x), LtQ(~n, -1)) 
 (((~d)^-1)*((~n)^-1))*integrate(((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~A*~b*~n + ~a*(~A*(1 + ~n) + ~C*~n)*Csc(~e + ~f*~x) + ~C*~b*~n*(Csc(~e + ~f*~x)^2), ~x), ~x) + ~A*~a*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~a + ~b*csc(~e + ~f*~x))*(~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), Not(LtQ(~n, -1))) 
 ((2 + ~n)^-1)*integrate(((~d*Csc(~e + ~f*~x))^~n)*Simp((~b*(~C*(1 + ~n) + ~A*(2 + ~n)) + ~B*~a*(2 + ~n))*Csc(~e + ~f*~x) + ~A*~a*(2 + ~n) + (2 + ~n)*(~C*~a + ~B*~b)*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~C*~b*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((2 + ~n)^-1))*cot(~e + ~f*~x)*Csc(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*(~a + ~b*csc(~e + ~f*~x))*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), Not(LtQ(~n, -1))) 
 ((2 + ~n)^-1)*integrate(((~d*Csc(~e + ~f*~x))^~n)*Simp(~A*~a*(2 + ~n) + ~b*(~C*(1 + ~n) + ~A*(2 + ~n))*Csc(~e + ~f*~x) + ~C*~a*(2 + ~n)*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~C*~b*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((2 + ~n)^-1))*cot(~e + ~f*~x)*Csc(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*csc(~e + ~f*~x), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~B, ~C), ~x), LtQ(~m, -1), EqQ((~a)^2 - ((~b)^2), 0)) 
 (~B*~b - ~A*~a - ~C*~a)*((~a + ~b*Csc(~e + ~f*~x))^~m)*(((~a)^-1)*((~f)^-1)*((1 + 2 * ~m)^-1))*cot(~e + ~f*~x)*Csc(~e + ~f*~x) - (((~a)^-1)*((~b)^-1)*((1 + 2 * ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*Csc(~e + ~f*~x)*Simp(~B*~a - ~C*~b - (~B*~b*(2 + ~m) - ~a*(~A*(2 + ~m) - ~C*(~m - 1)))*Csc(~e + ~f*~x) - 2 * ~A*~b*(1 + ~m), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*csc(~e + ~f*~x), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~C), ~x), LtQ(~m, -1), EqQ((~a)^2 - ((~b)^2), 0)) 
 ((~a + ~b*Csc(~e + ~f*~x))^~m)*(-~A - ~C)*(((~f)^-1)*((1 + 2 * ~m)^-1))*cot(~e + ~f*~x)*Csc(~e + ~f*~x) - (((~a)^-1)*((~b)^-1)*((1 + 2 * ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*Csc(~e + ~f*~x)*Simp(~a*(~A*(2 + ~m) - ~C*(~m - 1))*Csc(~e + ~f*~x) - ~C*~b - 2 * ~A*~b*(1 + ~m), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*csc(~e + ~f*~x), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~B, ~C), ~x), LtQ(~m, -1), NeQ((~a)^2 - ((~b)^2), 0)) 
 (((~b)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*Csc(~e + ~f*~x)*Simp(~b*(1 + ~m)*(~A*~a + ~C*~a - ~B*~b) - (~A*((~b)^2) + ~C*((~a)^2) + ~b*(1 + ~m)*(~A*~b + ~C*~b - ~B*~a) - ~B*~a*~b)*Csc(~e + ~f*~x), ~x), ~x) + (~B*~a*~b - ~A*((~b)^2) - ~C*((~a)^2))*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*csc(~e + ~f*~x), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~C), ~x), LtQ(~m, -1), NeQ((~a)^2 - ((~b)^2), 0)) 
 (((~b)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*Csc(~e + ~f*~x)*Simp(~a*~b*(~A + ~C)*(1 + ~m) - (~A*((~b)^2) + ~C*((~a)^2) + ~b*(1 + ~m)*(~A*~b + ~C*~b))*Csc(~e + ~f*~x), ~x), ~x) + ((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(-~A*((~b)^2) - ~C*((~a)^2))*(((~b)^-1)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*csc(~e + ~f*~x), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~B, ~C, ~m), ~x), Not(LtQ(~m, -1))) 
 (((~b)^-1)*((2 + ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*Csc(~e + ~f*~x)*Simp((~B*~b*(2 + ~m) - ~C*~a)*Csc(~e + ~f*~x) + ~C*~b*(1 + ~m) + ~A*~b*(2 + ~m), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((2 + ~m)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*csc(~e + ~f*~x), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~C, ~m), ~x), Not(LtQ(~m, -1))) 
 (((~b)^-1)*((2 + ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*Csc(~e + ~f*~x)*Simp(~C*~b*(1 + ~m) + ~A*~b*(2 + ~m) - ~C*~a*Csc(~e + ~f*~x), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((2 + ~m)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), EqQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -(1//2))) 
 (~B*~b - ~A*~a - ~C*~a)*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~a)^-1)*((~f)^-1)*((1 + 2 * ~m)^-1))*cot(~e + ~f*~x) - (((~a)^-1)*((~b)^-1)*((1 + 2 * ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*Simp(~B*~a*~n - (~B*~b*(1 + ~m + ~n) - ~a*(~A*(1 + ~m + ~n) - ~C*(~m - ~n)))*Csc(~e + ~f*~x) - ~A*~b*(1 + ~n + 2 * ~m) - ~C*~b*~n, ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), EqQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -(1//2))) 
 (((~a)^-1)*((~b)^-1)*((1 + 2 * ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*Simp(~A*~b*(1 + ~n + 2 * ~m) + ~C*~b*~n - ~a*(~A*(1 + ~m + ~n) - ~C*(~m - ~n))*Csc(~e + ~f*~x), ~x), ~x) - ~a*(~A + ~C)*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~a)^-1)*((~f)^-1)*((1 + 2 * ~m)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~m), ~x), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2))), Or(LtQ(~n, -(1//2)), EqQ(1 + ~m + ~n, 0))) 
 ~A*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x) - (((~b)^-1)*((~d)^-1)*((~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~A*~a*~m - ~B*~b*~n - ~b*(~A*(1 + ~m + ~n) + ~C*~n)*Csc(~e + ~f*~x), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~m), ~x), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2))), Or(LtQ(~n, -(1//2)), EqQ(1 + ~m + ~n, 0))) 
 ~A*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x) - (((~b)^-1)*((~d)^-1)*((~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~A*~a*~m - ~b*(~A*(1 + ~m + ~n) + ~C*~n)*Csc(~e + ~f*~x), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2))), Not(LtQ(~n, -(1//2))), NeQ(1 + ~m + ~n, 0)) 
 (((~b)^-1)*((1 + ~m + ~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*Simp((~C*~a*~m + ~B*~b*(1 + ~m + ~n))*Csc(~e + ~f*~x) + ~C*~b*~n + ~A*~b*(1 + ~m + ~n), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((1 + ~m + ~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2))), Not(LtQ(~n, -(1//2))), NeQ(1 + ~m + ~n, 0)) 
 (((~b)^-1)*((1 + ~m + ~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*Simp(~C*~b*~n + ~A*~b*(1 + ~m + ~n) + ~C*~a*~m*Csc(~e + ~f*~x), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((1 + ~m + ~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*(csc(~e + ~f*~x)^2), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~B, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1)) 
 ~a*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(((~b)^-2)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x) - (((~b)^-2)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*Csc(~e + ~f*~x)*Simp((~B*~b*((~a)^2 + ((~b)^2)*(1 + ~m)) - ~a*(~C*((~a)^2 + ((~b)^2)*(1 + ~m)) + ~A*((~b)^2)*(2 + ~m)))*Csc(~e + ~f*~x) + ~b*(1 + ~m)*(~A*((~b)^2) - ~a*(~B*~b - ~C*~a)) - ~C*~b*(1 + ~m)*((~a)^2 - ((~b)^2))*(Csc(~e + ~f*~x)^2), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*(csc(~e + ~f*~x)^2), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1)) 
 ~a*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(~A*((~b)^2) + ~C*((~a)^2))*(((~b)^-2)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x) - (((~b)^-2)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*Csc(~e + ~f*~x)*Simp(~b*(1 + ~m)*(~A*((~b)^2) + ~C*((~a)^2)) - ~a*(~C*((~a)^2 + ((~b)^2)*(1 + ~m)) + ~A*((~b)^2)*(2 + ~m))*Csc(~e + ~f*~x) - ~C*~b*(1 + ~m)*((~a)^2 - ((~b)^2))*(Csc(~e + ~f*~x)^2), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*(csc(~e + ~f*~x)^2), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~B, ~C, ~m), ~x), NeQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -1))) 
 (((~b)^-1)*((3 + ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*Csc(~e + ~f*~x)*Simp(~C*~a + ~b*(~C*(2 + ~m) + ~A*(3 + ~m))*Csc(~e + ~f*~x) - (2 * ~C*~a - ~B*~b*(3 + ~m))*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((3 + ~m)^-1))*cot(~e + ~f*~x)*Csc(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*(csc(~e + ~f*~x)^2), ~x) =>  if And(FreeQ(List(~a, ~b, ~e, ~f, ~A, ~C, ~m), ~x), NeQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -1))) 
 (((~b)^-1)*((3 + ~m)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*Csc(~e + ~f*~x)*Simp(~C*~a + ~b*(~C*(2 + ~m) + ~A*(3 + ~m))*Csc(~e + ~f*~x) - 2 * ~C*~a*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((3 + ~m)^-1))*cot(~e + ~f*~x)*Csc(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0), GtQ(~m, 0), LeQ(~n, -1)) 
 ~A*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x) - (((~d)^-1)*((~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(~m - 1))*((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~A*~b*~m - (~a*(~A*(1 + ~n) + ~C*~n) + ~B*~b*~n)*Csc(~e + ~f*~x) - ~B*~a*~n - ~b*(~A*(1 + ~m + ~n) + ~C*~n)*(Csc(~e + ~f*~x)^2), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0), GtQ(~m, 0), LeQ(~n, -1)) 
 ~A*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x) - (((~d)^-1)*((~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(~m - 1))*((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~A*~b*~m - ~b*(~A*(1 + ~m + ~n) + ~C*~n)*(Csc(~e + ~f*~x)^2) - ~a*(~A*(1 + ~n) + ~C*~n)*Csc(~e + ~f*~x), ~x), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), NeQ((~a)^2 - ((~b)^2), 0), GtQ(~m, 0), Not(LeQ(~n, -1))) 
 ((1 + ~m + ~n)^-1)*integrate(((~a + ~b*Csc(~e + ~f*~x))^(~m - 1))*((~d*Csc(~e + ~f*~x))^~n)*Simp((~C*~a*~m + ~B*~b*(1 + ~m + ~n))*(Csc(~e + ~f*~x)^2) + ((~A*~b + ~B*~a)*(1 + ~m + ~n) + ~C*~b*(~m + ~n))*Csc(~e + ~f*~x) + ~A*~a*(1 + ~m + ~n) + ~C*~a*~n, ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((1 + ~m + ~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), NeQ((~a)^2 - ((~b)^2), 0), GtQ(~m, 0), Not(LeQ(~n, -1))) 
 ((1 + ~m + ~n)^-1)*integrate(((~a + ~b*Csc(~e + ~f*~x))^(~m - 1))*((~d*Csc(~e + ~f*~x))^~n)*Simp(~A*~a*(1 + ~m + ~n) + ~C*~a*~n + ~b*(~A*(1 + ~m + ~n) + ~C*(~m + ~n))*Csc(~e + ~f*~x) + ~C*~a*~m*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~C*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n)*(((~f)^-1)*((1 + ~m + ~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1), GtQ(~n, 0)) 
 ~d*(((~b)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^(~n - 1))*Simp(~A*((~b)^2)*(~n - 1) + ~b*(1 + ~m)*(~A*~a + ~C*~a - ~B*~b)*Csc(~e + ~f*~x) - (~C*(~n*((~a)^2) + ((~b)^2)*(1 + ~m)) + ~b*(~A*~b - ~B*~a)*(1 + ~m + ~n))*(Csc(~e + ~f*~x)^2) - ~a*(~n - 1)*(~B*~b - ~C*~a), ~x), ~x) - ~d*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^(~n - 1))*(((~b)^-1)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1), GtQ(~n, 0)) 
 ~d*(((~b)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^(~n - 1))*Simp(~C*((~a)^2)*(~n - 1) + ~A*((~b)^2)*(~n - 1) + ~a*~b*(~A + ~C)*(1 + ~m)*Csc(~e + ~f*~x) - (~C*(~n*((~a)^2) + ((~b)^2)*(1 + ~m)) + ~A*(1 + ~m + ~n)*((~b)^2))*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~d*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(~A*((~b)^2) + ~C*((~a)^2))*((~d*Csc(~e + ~f*~x))^(~n - 1))*(((~b)^-1)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1), Not(And(ILtQ(~m + 2^-1, 0), ILtQ(~n, 0)))) 
 (((~a)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*Simp(~a*(1 + ~m)*(~A*~a + ~C*~a - ~B*~b) + (2 + ~m + ~n)*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*(Csc(~e + ~f*~x)^2) - (1 + ~m + ~n)*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b) - ~a*(1 + ~m)*(~A*~b + ~C*~b - ~B*~a)*Csc(~e + ~f*~x), ~x), ~x) + (~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*(((~a)^-1)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1), Not(And(ILtQ(~m + 2^-1, 0), ILtQ(~n, 0)))) 
 (((~a)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*Simp((~A + ~C)*((~a)^2)*(1 + ~m) + (~A*((~b)^2) + ~C*((~a)^2))*(2 + ~m + ~n)*(Csc(~e + ~f*~x)^2) - (~A*((~b)^2) + ~C*((~a)^2))*(1 + ~m + ~n) - ~a*~b*(~A + ~C)*(1 + ~m)*Csc(~e + ~f*~x), ~x), ~x) + ((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*(~A*((~b)^2) + ~C*((~a)^2))*((~d*Csc(~e + ~f*~x))^~n)*(((~a)^-1)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~m), ~x), NeQ((~a)^2 - ((~b)^2), 0), GtQ(~n, 0)) 
 ~d*(((~b)^-1)*((1 + ~m + ~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(~n - 1))*Simp((~C*~b*(~m + ~n) + ~A*~b*(1 + ~m + ~n))*Csc(~e + ~f*~x) + (~B*~b*(1 + ~m + ~n) - ~C*~a*~n)*(Csc(~e + ~f*~x)^2) + ~C*~a*(~n - 1), ~x), ~x) - ~C*~d*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^(~n - 1))*(((~b)^-1)*((~f)^-1)*((1 + ~m + ~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~m), ~x), NeQ((~a)^2 - ((~b)^2), 0), GtQ(~n, 0)) 
 ~d*(((~b)^-1)*((1 + ~m + ~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(~n - 1))*Simp((~C*~b*(~m + ~n) + ~A*~b*(1 + ~m + ~n))*Csc(~e + ~f*~x) + ~C*~a*(~n - 1) - ~C*~a*~n*(Csc(~e + ~f*~x)^2), ~x), ~x) - ~C*~d*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^(~n - 1))*(((~b)^-1)*((~f)^-1)*((1 + ~m + ~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~m), ~x), NeQ((~a)^2 - ((~b)^2), 0), LeQ(~n, -1)) 
 (((~a)^-1)*((~d)^-1)*((~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~B*~a*~n + ~a*(~A + ~A*~n + ~C*~n)*Csc(~e + ~f*~x) + ~A*~b*(2 + ~m + ~n)*(Csc(~e + ~f*~x)^2) - ~A*~b*(1 + ~m + ~n), ~x), ~x) + ~A*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*(((~a)^-1)*((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~m), ~x), NeQ((~a)^2 - ((~b)^2), 0), LeQ(~n, -1)) 
 (((~a)^-1)*((~d)^-1)*((~n)^-1))*integrate(((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(1 + ~n))*Simp(~a*(~A + ~A*~n + ~C*~n)*Csc(~e + ~f*~x) + ~A*~b*(2 + ~m + ~n)*(Csc(~e + ~f*~x)^2) - ~A*~b*(1 + ~m + ~n), ~x), ~x) + ~A*((~a + ~b*Csc(~e + ~f*~x))^(1 + ~m))*((~d*Csc(~e + ~f*~x))^~n)*(((~a)^-1)*((~f)^-1)*((~n)^-1))*cot(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*(((~a + ~b*csc(~e + ~f*~x))^-1)*(Sqrt(~d*csc(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ((~a)^-2)*integrate((~A*~a - (~A*~b - ~B*~a)*Csc(~e + ~f*~x))*(Sqrt(~d*Csc(~e + ~f*~x))^-1), ~x) + (~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*(((~a)^-2)*((~d)^-2))*integrate(((~a + ~b*Csc(~e + ~f*~x))^-1)*((~d*Csc(~e + ~f*~x))^((3//1)*(1//2))), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*(((~a + ~b*csc(~e + ~f*~x))^-1)*(Sqrt(~d*csc(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ((~a)^-2)*integrate((~A*~a - ~A*~b*Csc(~e + ~f*~x))*(Sqrt(~d*Csc(~e + ~f*~x))^-1), ~x) + (~A*((~b)^2) + ~C*((~a)^2))*(((~a)^-2)*((~d)^-2))*integrate(((~a + ~b*Csc(~e + ~f*~x))^-1)*((~d*Csc(~e + ~f*~x))^((3//1)*(1//2))), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((Sqrt(~a + ~b*csc(~e + ~f*~x))^-1)*(Sqrt(~d*csc(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ~C*((~d)^-2)*integrate(((~d*Csc(~e + ~f*~x))^((3//1)*(1//2)))*(Sqrt(~a + ~b*Csc(~e + ~f*~x))^-1), ~x) + integrate((~A + ~B*Csc(~e + ~f*~x))*((Sqrt(~a + ~b*Csc(~e + ~f*~x))^-1)*(Sqrt(~d*Csc(~e + ~f*~x))^-1)), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((Sqrt(~a + ~b*csc(~e + ~f*~x))^-1)*(Sqrt(~d*csc(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ~A*integrate((Sqrt(~a + ~b*Csc(~e + ~f*~x))*Sqrt(~d*Csc(~e + ~f*~x)))^-1, ~x) + ~C*((~d)^-2)*integrate(((~d*Csc(~e + ~f*~x))^((3//1)*(1//2)))*(Sqrt(~a + ~b*Csc(~e + ~f*~x))^-1), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x) 
 Unintegrable((~A + ~C*(Csc(~e + ~f*~x)^2) + ~B*Csc(~e + ~f*~x))*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*csc(~e + ~f*~x))^~n), ~x) =>  if FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x) 
 Unintegrable((~A + ~C*(Csc(~e + ~f*~x)^2))*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~A + ~C*(sec(~e + ~f*~x)^2) + ~B*sec(~e + ~f*~x))*((~a + ~b*sec(~e + ~f*~x))^~m)*((~d*cos(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), Not(IntegerQ(~n)), IntegerQ(~m)) 
 ((~d)^(2 + ~m))*integrate((~C + ~A*(cos(~e + ~f*~x)^2) + ~B*cos(~e + ~f*~x))*((~b + ~a*cos(~e + ~f*~x))^~m)*((~d*cos(~e + ~f*~x))^(~n - 2 - ~m)), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), Not(IntegerQ(~n)), IntegerQ(~m)) 
 ((~d)^(2 + ~m))*integrate((~C + ~A*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~b + ~a*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(~n - 2 - ~m)), ~x)
 end

@rule integrate((~A + ~C*(sec(~e + ~f*~x)^2))*((~a + ~b*sec(~e + ~f*~x))^~m)*((~d*cos(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), Not(IntegerQ(~n)), IntegerQ(~m)) 
 ((~d)^(2 + ~m))*integrate((~C + ~A*(cos(~e + ~f*~x)^2))*((~b + ~a*cos(~e + ~f*~x))^~m)*((~d*cos(~e + ~f*~x))^(~n - 2 - ~m)), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), Not(IntegerQ(~n)), IntegerQ(~m)) 
 ((~d)^(2 + ~m))*integrate((~C + ~A*(sin(~e + ~f*~x)^2))*((~b + ~a*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(~n - 2 - ~m)), ~x)
 end

@rule integrate((~A + ~C*(sec(~e + ~f*~x)^2) + ~B*sec(~e + ~f*~x))*((~a + ~b*sec(~e + ~f*~x))^~m)*((~c*((~d*sec(~e + ~f*~x))^~p))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~n))) 
 ((~c)^IntPart(~n))*((~c*((~d*Sec(~e + ~f*~x))^~p))^FracPart(~n))*((~d*Sec(~e + ~f*~x))^(-~p*FracPart(~n)))*integrate((~A + ~C*(Sec(~e + ~f*~x)^2) + ~B*Sec(~e + ~f*~x))*((~a + ~b*Sec(~e + ~f*~x))^~m)*((~d*Sec(~e + ~f*~x))^(~n*~p)), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2) + ~B*csc(~e + ~f*~x))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~c*((~d*csc(~e + ~f*~x))^~p))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~n))) 
 ((~c)^IntPart(~n))*((~c*((~d*Csc(~e + ~f*~x))^~p))^FracPart(~n))*((~d*Csc(~e + ~f*~x))^(-~p*FracPart(~n)))*integrate((~A + ~C*(Csc(~e + ~f*~x)^2) + ~B*Csc(~e + ~f*~x))*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(~n*~p)), ~x)
 end

@rule integrate((~A + ~C*(sec(~e + ~f*~x)^2))*((~a + ~b*sec(~e + ~f*~x))^~m)*((~c*((~d*sec(~e + ~f*~x))^~p))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~n))) 
 ((~c)^IntPart(~n))*((~c*((~d*Sec(~e + ~f*~x))^~p))^FracPart(~n))*((~d*Sec(~e + ~f*~x))^(-~p*FracPart(~n)))*integrate((~A + ~C*(Sec(~e + ~f*~x)^2))*((~a + ~b*Sec(~e + ~f*~x))^~m)*((~d*Sec(~e + ~f*~x))^(~n*~p)), ~x)
 end

@rule integrate((~A + ~C*(csc(~e + ~f*~x)^2))*((~a + ~b*csc(~e + ~f*~x))^~m)*((~c*((~d*csc(~e + ~f*~x))^~p))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~n))) 
 ((~c)^IntPart(~n))*((~c*((~d*Csc(~e + ~f*~x))^~p))^FracPart(~n))*((~d*Csc(~e + ~f*~x))^(-~p*FracPart(~n)))*integrate((~A + ~C*(Csc(~e + ~f*~x)^2))*((~a + ~b*Csc(~e + ~f*~x))^~m)*((~d*Csc(~e + ~f*~x))^(~n*~p)), ~x)
 end

