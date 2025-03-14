@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b, 0)) 
 ((~b)^-2)*integrate((~B*~b + ~C*~b*sin(~e + ~f*~x) - ~C*~a)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ(~A*((~b)^2) + ~C*((~a)^2), 0)) 
 -~C*((~b)^-2)*integrate((~a - ~b*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~c + ~d*sin(~e + ~f*~x))*(~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1)) 
 (~a*~d - ~b*~c)*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(((~b)^-2)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cos(~e + ~f*~x) - (((~b)^-2)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*Simp(((~b*~c - ~a*~d)*(~C*((~a)^2 + ((~b)^2)*(1 + ~m)) + ~A*((~b)^2)*(2 + ~m)) + ~B*~b*(~d*((~a)^2) + ~d*((~b)^2)*(1 + ~m) - ~a*~b*~c*(2 + ~m)))*sin(~e + ~f*~x) + ~b*(1 + ~m)*((~B*~b - ~C*~a)*(~b*~c - ~a*~d) - ~A*~b*(~a*~c - ~b*~d)) - ~C*~b*~d*(1 + ~m)*((~a)^2 - ((~b)^2))*(sin(~e + ~f*~x)^2), ~x), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*(~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), LtQ(~m, -1)) 
 (((~b)^-2)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*Simp(~b*(1 + ~m)*(~C*~a*(~b*~c - ~a*~d) + ~A*~b*(~a*~c - ~b*~d)) + ~C*~b*~d*(1 + ~m)*((~a)^2 - ((~b)^2))*(sin(~e + ~f*~x)^2) - (~b*~c - ~a*~d)*(~C*((~a)^2 + ((~b)^2)*(1 + ~m)) + ~A*((~b)^2)*(2 + ~m))*sin(~e + ~f*~x), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(~A*((~b)^2) + ~C*((~a)^2))*(~a*~d - ~b*~c)*(((~b)^-2)*((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~c + ~d*sin(~e + ~f*~x))*(~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -1))) 
 (((~b)^-1)*((3 + ~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*Simp(~C*~a*~d + ~b*(~d*(~C*(2 + ~m) + ~A*(3 + ~m)) + ~B*~c*(3 + ~m))*sin(~e + ~f*~x) + ~A*~b*~c*(3 + ~m) - (2 * ~C*~a*~d - ~b*(3 + ~m)*(~B*~d + ~C*~c))*(sin(~e + ~f*~x)^2), ~x), ~x) - ~C*~d*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((3 + ~m)^-1))*cos(~e + ~f*~x)*sin(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*(~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -1))) 
 (((~b)^-1)*((3 + ~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*Simp(~C*~a*~d + ~A*~b*~c*(3 + ~m) + ~b*~d*(~C*(2 + ~m) + ~A*(3 + ~m))*sin(~e + ~f*~x) - (2 * ~C*~a*~d - ~C*~b*~c*(3 + ~m))*(sin(~e + ~f*~x)^2), ~x), ~x) - ~C*~d*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((3 + ~m)^-1))*cos(~e + ~f*~x)*sin(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), EqQ(~b*~c + ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), Or(LtQ(~m, -(1//2)), And(EqQ(2 + ~m + ~n, 0), NeQ(1 + 2 * ~m, 0)))) 
 (~A*~a + ~C*~a - ~B*~b)*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*((1//2)*((~b)^-1)*((~c)^-1)*((~f)^-1)*((1 + 2 * ~m)^-1))*cos(~e + ~f*~x) - ((1//2)*((~b)^-1)*((~c)^-1)*((~d)^-1)*((1 + 2 * ~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~A*((2 + ~n + 2 * ~m)*((~d)^2) + ((~c)^2)*(1 + ~m)) + ~d*((~A*~c + ~B*~d)*(2 + ~m + ~n) - ~C*~c*(3 * ~m - ~n))*sin(~e + ~f*~x) - ~C*(~m*((~c)^2) - ((~d)^2)*(1 + ~n)) - ~B*~c*~d*(~m - 1 - ~n), ~x), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), EqQ(~b*~c + ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), Or(LtQ(~m, -(1//2)), And(EqQ(2 + ~m + ~n, 0), NeQ(1 + 2 * ~m, 0)))) 
 ((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(~A*~a + ~C*~a)*((1//2)*((~b)^-1)*((~c)^-1)*((~f)^-1)*((1 + 2 * ~m)^-1))*cos(~e + ~f*~x) - ((1//2)*((~b)^-1)*((~c)^-1)*((~d)^-1)*((1 + 2 * ~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~A*((2 + ~n + 2 * ~m)*((~d)^2) + ((~c)^2)*(1 + ~m)) + ~d*(~A*~c*(2 + ~m + ~n) - ~C*~c*(3 * ~m - ~n))*sin(~e + ~f*~x) - ~C*(~m*((~c)^2) - ((~d)^2)*(1 + ~n)), ~x), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m), ~x), EqQ(~b*~c + ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2)))) 
 integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)*Simp(~A + ~C + ~B*sin(~e + ~f*~x), ~x), ~x) - 2 * ~C*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((3 + 2 * ~m)^-1)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m), ~x), EqQ(~b*~c + ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2)))) 
 (~A + ~C)*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1), ~x) - 2 * ~C*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(((~b)^-1)*((~f)^-1)*((3 + 2 * ~m)^-1)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), EqQ(~b*~c + ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2))), NeQ(2 + ~m + ~n, 0)) 
 (((~b)^-1)*((~d)^-1)*((2 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~C*(~a*~c*~m + ~b*~d*(1 + ~n)) + (~B*~b*~d*(2 + ~m + ~n) - ~C*~b*~c*(1 + 2 * ~m))*sin(~e + ~f*~x) + ~A*~b*~d*(2 + ~m + ~n), ~x), ~x) - ~C*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), EqQ(~b*~c + ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), Not(LtQ(~m, -(1//2))), NeQ(2 + ~m + ~n, 0)) 
 (((~b)^-1)*((~d)^-1)*((2 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~C*(~a*~c*~m + ~b*~d*(1 + ~n)) + ~A*~b*~d*(2 + ~m + ~n) - ~C*~b*~c*(1 + 2 * ~m)*sin(~e + ~f*~x), ~x), ~x) - ~C*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), LtQ(~m, -(1//2))) 
 (((~b)^-1)*((1 + 2 * ~m)^-1)*((~b*~c - ~a*~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~B*(~b*~c*~m + ~a*~d*(1 + ~n)) + ~A*(~a*~c*(1 + ~m) - ~b*~d*(2 + ~n + 2 * ~m)) + (~C*(~b*~c*(1 + 2 * ~m) - ~a*~d*(~m - 1 - ~n)) + ~d*(~A*~a - ~B*~b)*(2 + ~m + ~n))*sin(~e + ~f*~x) - ~C*(~a*~c*~m + ~b*~d*(1 + ~n)), ~x), ~x) + (~A*~a + ~C*~a - ~B*~b)*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~f)^-1)*((1 + 2 * ~m)^-1)*((~b*~c - ~a*~d)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), LtQ(~m, -(1//2))) 
 (((~b)^-1)*((1 + 2 * ~m)^-1)*((~b*~c - ~a*~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~A*(~a*~c*(1 + ~m) - ~b*~d*(2 + ~n + 2 * ~m)) + (~C*(~b*~c*(1 + 2 * ~m) - ~a*~d*(~m - 1 - ~n)) + ~A*~a*~d*(2 + ~m + ~n))*sin(~e + ~f*~x) - ~C*(~a*~c*~m + ~b*~d*(1 + ~n)), ~x), ~x) + ~a*(~A + ~C)*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~f)^-1)*((1 + 2 * ~m)^-1)*((~b*~c - ~a*~d)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), Not(LtQ(~m, -(1//2))), Or(LtQ(~n, -1), EqQ(2 + ~m + ~n, 0))) 
 (((~b)^-1)*((~d)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*Simp((~C*~c - ~B*~d)*(~a*~c*~m + ~b*~d*(1 + ~n)) + ~A*~d*(~a*~d*~m + ~b*~c*(1 + ~n)) + ~b*(~d*(~B*~c - ~A*~d)*(2 + ~m + ~n) - ~C*(((~c)^2)*(1 + ~m) + ((~d)^2)*(1 + ~n)))*sin(~e + ~f*~x), ~x), ~x) + (~B*~c*~d - ~A*((~d)^2) - ~C*((~c)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), Not(LtQ(~m, -(1//2))), Or(LtQ(~n, -1), EqQ(2 + ~m + ~n, 0))) 
 (((~b)^-1)*((~d)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*Simp(~C*~c*(~a*~c*~m + ~b*~d*(1 + ~n)) + ~A*~d*(~a*~d*~m + ~b*~c*(1 + ~n)) - ~b*(~C*(((~c)^2)*(1 + ~m) + ((~d)^2)*(1 + ~n)) + ~A*(2 + ~m + ~n)*((~d)^2))*sin(~e + ~f*~x), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(-~A*((~d)^2) - ~C*((~c)^2))*(((~d)^-1)*((~f)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), Not(LtQ(~m, -(1//2))), NeQ(2 + ~m + ~n, 0)) 
 (((~b)^-1)*((~d)^-1)*((2 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~C*(~a*~c*~m + ~b*~d*(1 + ~n)) + (~C*(~a*~d*~m - ~b*~c*(1 + ~m)) + ~B*~b*~d*(2 + ~m + ~n))*sin(~e + ~f*~x) + ~A*~b*~d*(2 + ~m + ~n), ~x), ~x) - ~C*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), EqQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), Not(LtQ(~m, -(1//2))), NeQ(2 + ~m + ~n, 0)) 
 (((~b)^-1)*((~d)^-1)*((2 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~C*(~a*~c*~m + ~b*~d*(1 + ~n)) + ~C*(~a*~d*~m - ~b*~c*(1 + ~m))*sin(~e + ~f*~x) + ~A*~b*~d*(2 + ~m + ~n), ~x), ~x) - ~C*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), GtQ(~m, 0), LtQ(~n, -1)) 
 (((~d)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*Simp((~C*~c - ~B*~d)*(~b*~c*~m + ~a*~d*(1 + ~n)) + ~A*~d*(~b*~d*~m + ~a*~c*(1 + ~n)) + ~b*(~d*(~B*~c - ~A*~d)*(2 + ~m + ~n) - ~C*(((~c)^2)*(1 + ~m) + ((~d)^2)*(1 + ~n)))*(sin(~e + ~f*~x)^2) - (~d*(~B*(~b*~d*(1 + ~n) - ~a*~c*(2 + ~n)) + ~A*(~a*~d*(2 + ~n) - ~b*~c*(1 + ~n))) - ~C*(~b*~c*~d*(1 + ~n) - ~a*((~c)^2 + ((~d)^2)*(1 + ~n))))*sin(~e + ~f*~x), ~x), ~x) + (~B*~c*~d - ~A*((~d)^2) - ~C*((~c)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), GtQ(~m, 0), LtQ(~n, -1)) 
 (((~d)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*Simp(~C*~c*(~b*~c*~m + ~a*~d*(1 + ~n)) + ~A*~d*(~b*~d*~m + ~a*~c*(1 + ~n)) - (~A*~d*(~a*~d*(2 + ~n) - ~b*~c*(1 + ~n)) - ~C*(~b*~c*~d*(1 + ~n) - ~a*((~c)^2 + ((~d)^2)*(1 + ~n))))*sin(~e + ~f*~x) - ~b*(~C*(((~c)^2)*(1 + ~m) + ((~d)^2)*(1 + ~n)) + ~A*(2 + ~m + ~n)*((~d)^2))*(sin(~e + ~f*~x)^2), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(-~A*((~d)^2) - ~C*((~c)^2))*(((~d)^-1)*((~f)^-1)*((1 + ~n)^-1)*(((~c)^2 - ((~d)^2))^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), GtQ(~m, 0), Not(And(IGtQ(~n, 0), Or(Not(IntegerQ(~m)), And(EqQ(~a, 0), NeQ(~c, 0)))))) 
 (((~d)^-1)*((2 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~C*(~b*~c*~m + ~a*~d*(1 + ~n)) + (~d*(~A*~b + ~B*~a)*(2 + ~m + ~n) - ~C*(~a*~c - ~b*~d*(1 + ~m + ~n)))*sin(~e + ~f*~x) + (~C*(~a*~d*~m - ~b*~c*(1 + ~m)) + ~B*~b*~d*(2 + ~m + ~n))*(sin(~e + ~f*~x)^2) + ~A*~a*~d*(2 + ~m + ~n), ~x), ~x) - ~C*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), GtQ(~m, 0), Not(And(IGtQ(~n, 0), Or(Not(IntegerQ(~m)), And(EqQ(~a, 0), NeQ(~c, 0)))))) 
 (((~d)^-1)*((2 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~C*(~b*~c*~m + ~a*~d*(1 + ~n)) + (~A*~b*~d*(2 + ~m + ~n) - ~C*(~a*~c - ~b*~d*(1 + ~m + ~n)))*sin(~e + ~f*~x) + ~C*(~a*~d*~m - ~b*~c*(1 + ~m))*(sin(~e + ~f*~x)^2) + ~A*~a*~d*(2 + ~m + ~n), ~x), ~x) - ~C*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ((~b)^-1)*integrate((~A*~b + (~B*~b - ~C*~a)*sin(~e + ~f*~x))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~d*sin(~e + ~f*~x))^-1)), ~x) + ~C*(((~b)^-1)*((~d)^-1))*integrate((Sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*Sqrt(~d*sin(~e + ~f*~x)), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ((~b)^-1)*integrate((~A*~b - ~C*~a*sin(~e + ~f*~x))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~d*sin(~e + ~f*~x))^-1)), ~x) + ~C*(((~b)^-1)*((~d)^-1))*integrate((Sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*Sqrt(~d*sin(~e + ~f*~x)), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ((~b)^-2)*integrate((~A*((~b)^2) + ~b*(~B*~b - 2 * ~C*~a)*sin(~e + ~f*~x) - ~C*((~a)^2))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x) + ~C*((~b)^-2)*integrate((Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)*Sqrt(~a + ~b*sin(~e + ~f*~x)), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ((~b)^-2)*integrate((~A*((~b)^2) - ~C*((~a)^2) - 2 * ~C*~a*~b*sin(~e + ~f*~x))*(((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x) + ~C*((~b)^-2)*integrate((Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)*Sqrt(~a + ~b*sin(~e + ~f*~x)), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), LtQ(~m, -1), Or(And(EqQ(~a, 0), IntegerQ(~m), Not(IntegerQ(~n))), Not(And(IntegerQ(2 * ~n), LtQ(~n, -1), Or(And(IntegerQ(~n), Not(IntegerQ(~m))), EqQ(~a, 0)))))) 
 (((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1)*((~b*~c - ~a*~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~d*(2 + ~m + ~n)*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b) + (1 + ~m)*(~b*~c - ~a*~d)*(~A*~a + ~C*~a - ~B*~b) - (~c*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b) + (1 + ~m)*(~b*~c - ~a*~d)*(~A*~b + ~C*~b - ~B*~a))*sin(~e + ~f*~x) - ~d*(3 + ~m + ~n)*(~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*(sin(~e + ~f*~x)^2), ~x), ~x) + (~B*~a*~b - ~A*((~b)^2) - ~C*((~a)^2))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1)*((~b*~c - ~a*~d)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0), LtQ(~m, -1), Or(And(EqQ(~a, 0), IntegerQ(~m), Not(IntegerQ(~n))), Not(And(IntegerQ(2 * ~n), LtQ(~n, -1), Or(And(IntegerQ(~n), Not(IntegerQ(~m))), EqQ(~a, 0)))))) 
 (((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1)*((~b*~c - ~a*~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*Simp(~d*(~A*((~b)^2) + ~C*((~a)^2))*(2 + ~m + ~n) + ~a*(~A + ~C)*(1 + ~m)*(~b*~c - ~a*~d) - (~c*(~A*((~b)^2) + ~C*((~a)^2)) + ~b*(~A + ~C)*(1 + ~m)*(~b*~c - ~a*~d))*sin(~e + ~f*~x) - ~d*(~A*((~b)^2) + ~C*((~a)^2))*(3 + ~m + ~n)*(sin(~e + ~f*~x)^2), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*(-~A*((~b)^2) - ~C*((~a)^2))*(((~f)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1)*((~b*~c - ~a*~d)^-1))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*(((~a + ~b*sin(~e + ~f*~x))^-1)*((~c + ~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ~C*~x*(((~b)^-1)*((~d)^-1)) + (~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*(((~b)^-1)*((~b*~c - ~a*~d)^-1))*integrate((~a + ~b*sin(~e + ~f*~x))^-1, ~x) - (~A*((~d)^2) + ~C*((~c)^2) - ~B*~c*~d)*(((~d)^-1)*((~b*~c - ~a*~d)^-1))*integrate((~c + ~d*sin(~e + ~f*~x))^-1, ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*(((~a + ~b*sin(~e + ~f*~x))^-1)*((~c + ~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ~C*~x*(((~b)^-1)*((~d)^-1)) + (~A*((~b)^2) + ~C*((~a)^2))*(((~b)^-1)*((~b*~c - ~a*~d)^-1))*integrate((~a + ~b*sin(~e + ~f*~x))^-1, ~x) - (~A*((~d)^2) + ~C*((~c)^2))*(((~d)^-1)*((~b*~c - ~a*~d)^-1))*integrate((~c + ~d*sin(~e + ~f*~x))^-1, ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*(((~c + ~d*sin(~e + ~f*~x))^-1)*(Sqrt(~a + ~b*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ~C*(((~b)^-1)*((~d)^-1))*integrate(Sqrt(~a + ~b*sin(~e + ~f*~x)), ~x) - (((~b)^-1)*((~d)^-1))*integrate((((~c + ~d*sin(~e + ~f*~x))^-1)*(Sqrt(~a + ~b*sin(~e + ~f*~x))^-1))*Simp((~C*~a*~d + ~C*~b*~c - ~B*~b*~d)*sin(~e + ~f*~x) + ~C*~a*~c - ~A*~b*~d, ~x), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*(((~c + ~d*sin(~e + ~f*~x))^-1)*(Sqrt(~a + ~b*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ~C*(((~b)^-1)*((~d)^-1))*integrate(Sqrt(~a + ~b*sin(~e + ~f*~x)), ~x) - (((~b)^-1)*((~d)^-1))*integrate((((~c + ~d*sin(~e + ~f*~x))^-1)*(Sqrt(~a + ~b*sin(~e + ~f*~x))^-1))*Simp((~C*~a*~d + ~C*~b*~c)*sin(~e + ~f*~x) + ~C*~a*~c - ~A*~b*~d, ~x), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((Sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ((1//2)*((~d)^-1))*integrate((((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1))*Simp((2 * ~B*~b*~d - ~C*(~b*~c + ~a*~d))*(sin(~e + ~f*~x)^2) + 2 * ~A*~a*~d - ~C*(~b*~c - ~a*~d) - (2 * ~C*~a*~c - 2 * ~d*(~A*~b + ~B*~a))*sin(~e + ~f*~x), ~x), ~x) - ~C*(((~d)^-1)*((~f)^-1)*(Sqrt(~a + ~b*sin(~e + ~f*~x))^-1))*Sqrt(~c + ~d*sin(~e + ~f*~x))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((Sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 ((1//2)*((~d)^-1))*integrate((((~a + ~b*sin(~e + ~f*~x))^((-3//1)*(1//2)))*(Sqrt(~c + ~d*sin(~e + ~f*~x))^-1))*Simp(2 * ~A*~a*~d - ~C*(~b*~c - ~a*~d) - (2 * ~C*~a*~c - 2 * ~A*~b*~d)*sin(~e + ~f*~x) - ~C*(~b*~c + ~a*~d)*(sin(~e + ~f*~x)^2), ~x), ~x) - ~C*(((~d)^-1)*((~f)^-1)*(Sqrt(~a + ~b*sin(~e + ~f*~x))^-1))*Sqrt(~c + ~d*sin(~e + ~f*~x))*cos(~e + ~f*~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 (~A*((~b)^2) + ~C*((~a)^2) - ~B*~a*~b)*((~b)^-2)*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n), ~x) + ((~b)^-2)*(~B*~b - ~C*~a)*integrate((~d*sin(~e + ~f*~x))^~n, ~x) + ~C*(((~b)^-1)*((~d)^-1))*integrate((~d*sin(~e + ~f*~x))^(1 + ~n), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n), ~x), NeQ((~a)^2 - ((~b)^2), 0)) 
 ((~b)^-2)*(~A*((~b)^2) + ~C*((~a)^2))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n), ~x) + ~C*(((~b)^-1)*((~d)^-1))*integrate((~d*sin(~e + ~f*~x))^(1 + ~n), ~x) - ~C*~a*((~b)^-2)*integrate((~d*sin(~e + ~f*~x))^~n, ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 Unintegrable((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) =>  if And(FreeQ(List(~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n), ~x), NeQ(~b*~c - ~a*~d, 0), NeQ((~a)^2 - ((~b)^2), 0), NeQ((~c)^2 - ((~d)^2), 0)) 
 Unintegrable((~A + ~C*(sin(~e + ~f*~x)^2))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~b*(sin(~e + ~f*~x)^~p))^~m), ~x) =>  if And(FreeQ(List(~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~m))) 
 ((~b*(sin(~e + ~f*~x)^~p))^~m)*((~b*sin(~e + ~f*~x))^(-~m*~p))*integrate((~A + ~C*(sin(~e + ~f*~x)^2) + ~B*sin(~e + ~f*~x))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~b*sin(~e + ~f*~x))^(~m*~p)), ~x)
 end

@rule integrate((~A + ~C*(cos(~e + ~f*~x)^2) + ~B*cos(~e + ~f*~x))*((~c + ~d*cos(~e + ~f*~x))^~n)*((~b*(cos(~e + ~f*~x)^~p))^~m), ~x) =>  if And(FreeQ(List(~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~m))) 
 ((~b*(cos(~e + ~f*~x)^~p))^~m)*((~b*cos(~e + ~f*~x))^(-~m*~p))*integrate((~A + ~C*(cos(~e + ~f*~x)^2) + ~B*cos(~e + ~f*~x))*((~c + ~d*cos(~e + ~f*~x))^~n)*((~b*cos(~e + ~f*~x))^(~m*~p)), ~x)
 end

@rule integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~b*(sin(~e + ~f*~x)^~p))^~m), ~x) =>  if And(FreeQ(List(~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~m))) 
 ((~b*(sin(~e + ~f*~x)^~p))^~m)*((~b*sin(~e + ~f*~x))^(-~m*~p))*integrate((~A + ~C*(sin(~e + ~f*~x)^2))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~b*sin(~e + ~f*~x))^(~m*~p)), ~x)
 end

@rule integrate((~A + ~C*(cos(~e + ~f*~x)^2))*((~c + ~d*cos(~e + ~f*~x))^~n)*((~b*(cos(~e + ~f*~x)^~p))^~m), ~x) =>  if And(FreeQ(List(~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n, ~p), ~x), Not(IntegerQ(~m))) 
 ((~b*(cos(~e + ~f*~x)^~p))^~m)*((~b*cos(~e + ~f*~x))^(-~m*~p))*integrate((~A + ~C*(cos(~e + ~f*~x)^2))*((~c + ~d*cos(~e + ~f*~x))^~n)*((~b*cos(~e + ~f*~x))^(~m*~p)), ~x)
 end

