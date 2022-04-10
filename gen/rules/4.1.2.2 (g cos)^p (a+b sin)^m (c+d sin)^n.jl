@rule ((~c + ~d*Sec(~e + ~f*~x))^~n)*((~d + ~c*cos(~e + ~f*~x))^(-~n))*(cos(~e + ~f*~x)^~n)*integrate(((~a + ~b*cos(~e + ~f*~x))^~m)*((~d + ~c*cos(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^(-~n)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*cos(~e + ~f*~x), ~x)

@rule (((~b)^-1)*((~f)^-1))*Subst(integrate(((~a + ~x)^~m)*((~c + ~d*~x*((~b)^-1))^~n), ~x), ~x, ~b*sin(~e + ~f*~x)) => integrate((~a + ~b*sin(~e + ~f*~x))*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ~a*integrate(((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x) + ~b*((~d)^-1)*integrate(((~d*sin(~e + ~f*~x))^(1 + ~n))*(cos(~e + ~f*~x)^~p), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ((~a)^-1)*integrate(((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^(~p - 2)), ~x) - (((~b)^-1)*((~d)^-1))*integrate(((~d*sin(~e + ~f*~x))^(1 + ~n))*(cos(~e + ~f*~x)^(~p - 2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule (((~b)^(-~p))*((~f)^-1))*Subst(integrate(((~a + ~x)^(~m + (1//2)*(~p - 1)))*((~a - ~x)^((1//2)*(~p - 1)))*((~c + ~d*~x*((~b)^-1))^~n), ~x), ~x, ~b*sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule (((~b)^(-~p))*((~f)^-1))*Subst(integrate(((~a + ~x)^~m)*((~c + ~d*~x*((~b)^-1))^~n)*(((~b)^2 - ((~x)^2))^((1//2)*(~p - 1))), ~x), ~x, ~b*sin(~e + ~f*~x)) => integrate((~a + ~b*sin(~e + ~f*~x))*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ~a*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x) + ~b*((~d)^-1)*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(1 + ~n)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~a)^-1)*((~g)^2)*integrate(((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) - ((~g)^2)*(((~b)^-1)*((~d)^-1))*integrate(((~d*sin(~e + ~f*~x))^(1 + ~n))*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~a)^~m)*((~c)^~m)*((~g)^(-2~m))*integrate(((~c + ~d*sin(~e + ~f*~x))^(~n - ~m))*((~g*cos(~e + ~f*~x))^(~p + 2~m)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule (((~a)^(-(1//2)*~p))*((~c)^(-(1//2)*~p)))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m + (1//2)*~p))*((~c + ~d*sin(~e + ~f*~x))^(~n + (1//2)*~p)), ~x) => integrate(((~g*cos(~e + ~f*~x))^~p)*((sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(~c + ~d*sin(~e + ~f*~x))^-1)), ~x)

@rule ~g*((sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(~c + ~d*sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)*integrate((~g*cos(~e + ~f*~x))^(~p - 1), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~a)^IntPart(~m))*((~c)^IntPart(~m))*((~a + ~b*sin(~e + ~f*~x))^FracPart(~m))*((~c + ~d*sin(~e + ~f*~x))^FracPart(~m))*(((~g)^(-2IntPart(~m)))*((~g*cos(~e + ~f*~x))^(-2FracPart(~m))))*integrate(((~c + ~d*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^(~p + 2~m)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~b*((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((~m - 1 - ~n)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule -~b*(~p + 2~m - 1)*(((~d)^-1)*((1 + ~p + 2~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*((~g*cos(~e + ~f*~x))^~p), ~x) - 2~b*((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~p + 2~n)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~a*(~p + 2~m - 1)*((~m + ~n + ~p)^-1)*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x) - ~b*((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((~m + ~n + ~p)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~a)^IntPart(~m))*((~c)^IntPart(~m))*((~a + ~b*sin(~e + ~f*~x))^FracPart(~m))*((~c + ~d*sin(~e + ~f*~x))^FracPart(~m))*(((~g)^(-2IntPart(~m)))*((~g*cos(~e + ~f*~x))^(-2FracPart(~m))))*integrate((~g*cos(~e + ~f*~x))^(~p + 2~m), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~b*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((~m - ~n)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (1 + ~m + ~n + ~p)*(((~a)^-1)*((1 + ~p + 2~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x) + ~b*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((1 + ~p + 2~m)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule -~b*(~p + 2~m - 1)*(((~d)^-1)*((1 + ~p + 2~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^(1 + ~n))*((~g*cos(~e + ~f*~x))^~p), ~x) - 2~b*((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~p + 2~n)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~a*(~p + 2~m - 1)*((~m + ~n + ~p)^-1)*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x) - ~b*((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((~m + ~n + ~p)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (1 + ~m + ~n + ~p)*(((~a)^-1)*((1 + ~p + 2~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x) + ~b*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((1 + ~p + 2~m)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~a)^IntPart(~m))*((~c)^IntPart(~m))*((~a + ~b*sin(~e + ~f*~x))^FracPart(~m))*((~c + ~d*sin(~e + ~f*~x))^FracPart(~m))*(((~g)^(-2IntPart(~m)))*((~g*cos(~e + ~f*~x))^(-2FracPart(~m))))*integrate(((~c + ~d*sin(~e + ~f*~x))^(~n - ~m))*((~g*cos(~e + ~f*~x))^(~p + 2~m)), ~x) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule -~d*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~m + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~b*(~a*~d*~m + ~b*~c*(1 + ~m + ~p))*(((~a)^-1)*((~g)^-2)*((1 + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~g*cos(~e + ~f*~x))^(2 + ~p)), ~x) + ((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(-~b*~c - ~a*~d)*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((1 + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (~a*~d*~m + ~b*~c*(1 + ~m + ~p))*(((~b)^-1)*((1 + ~m + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x) - ~d*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~m + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*(cos(~e + ~f*~x)^2), ~x)

@rule (((~b)^-3)*((3 + 2~m)^-1))*integrate((~b*~c + 2~a*~d*(1 + ~m) - ~b*~d*(3 + 2~m)*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^(2 + ~m)), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(2~b*~c - 2~a*~d)*(((~b)^-2)*((~f)^-1)*((3 + 2~m)^-1))*cos(~e + ~f*~x) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*(cos(~e + ~f*~x)^2), ~x)

@rule ~d*((~a + ~b*sin(~e + ~f*~x))^(2 + ~m))*(((~b)^-2)*((~f)^-1)*((3 + ~m)^-1))*cos(~e + ~f*~x) - (((~b)^-2)*((3 + ~m)^-1))*integrate(((~b*~c*(3 + ~m) - ~a*~d*(4 + ~m))*sin(~e + ~f*~x) + ~b*~d*(2 + ~m) - ~a*~c*(3 + ~m))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m)), ~x) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (~a*~d*~m + ~b*~c*(1 + ~m + ~p))*(((~a)^-1)*((~b)^-1)*((1 + ~p + 2~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^~p), ~x) + ((~a + ~b*sin(~e + ~f*~x))^~m)*(~b*~c - ~a*~d)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((1 + ~p + 2~m)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (~a*~d*~m + ~b*~c*(1 + ~m + ~p))*(((~b)^-1)*((1 + ~m + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x) - ~d*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~m + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (((~g)^-2)*((1 + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~g*cos(~e + ~f*~x))^(2 + ~p))*Simp(~b*~d*~m + ~a*~c*(2 + ~p) + ~b*~c*(2 + ~m + ~p)*sin(~e + ~f*~x), ~x), ~x) - (~d + ~c*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((1 + ~m + ~p)^-1)*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~g*cos(~e + ~f*~x))^~p)*Simp((~a*~d*~m + ~b*~c*(1 + ~m + ~p))*sin(~e + ~f*~x) + ~b*~d*~m + ~a*~c*(1 + ~m + ~p), ~x), ~x) - ~d*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~m + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~g)^2)*(~p - 1)*(((~b)^-2)*((1 + ~m)^-1)*((1 + ~m + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(~p - 2))*Simp((~b*~c*(1 + ~m + ~p) - ~a*~d*~p)*sin(~e + ~f*~x) + ~b*~d*(1 + ~m), ~x), ~x) + ~g*(~b*~c*(1 + ~m + ~p) + ~b*~d*(1 + ~m)*sin(~e + ~f*~x) - ~a*~d*~p)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~b)^-2)*((~f)^-1)*((1 + ~m)^-1)*((1 + ~m + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^~p)*Simp((1 + ~m)*(~a*~c - ~b*~d) - (~b*~c - ~a*~d)*(2 + ~m + ~p)*sin(~e + ~f*~x), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(~a*~d - ~b*~c)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~m)^-1)*(((~a)^2 - ((~b)^2))^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~g)^2)*(~p - 1)*(((~b)^-2)*((~m + ~p)^-1)*((1 + ~m + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(~p - 2))*Simp(~b*(~a*~d*~m + ~b*~c*(1 + ~m + ~p)) + (~a*~b*~c*(1 + ~m + ~p) - ~d*(~p*((~a)^2) - ((~b)^2)*(~m + ~p)))*sin(~e + ~f*~x), ~x), ~x) + ~g*(~b*~c*(1 + ~m + ~p) + ~b*~d*(~m + ~p)*sin(~e + ~f*~x) - ~a*~d*~p)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~b)^-2)*((~f)^-1)*((~m + ~p)^-1)*((1 + ~m + ~p)^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule (((~g)^-2)*((1 + ~p)^-1)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(2 + ~p))*Simp(~c*(((~a)^2)*(2 + ~p) - (2 + ~m + ~p)*((~b)^2)) + ~a*~b*~d*~m + ~b*(~a*~c - ~b*~d)*(3 + ~m + ~p)*sin(~e + ~f*~x), ~x), ~x) + (~b*~c - ~a*~d - (~a*~c - ~b*~d)*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~f)^-1)*((~g)^-1)*((1 + ~p)^-1)*(((~a)^2 - ((~b)^2))^-1)) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~d*((~b)^-1)*integrate((~g*cos(~e + ~f*~x))^~p, ~x) + ((~b)^-1)*(~b*~c - ~a*~d)*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p), ~x) => integrate((~c + ~d*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~c*~g*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~f)^-1)*((1 - sin(~e + ~f*~x))^(-(1//2)*(~p - 1)))*((1 + sin(~e + ~f*~x))^(-(1//2)*(~p - 1))))*Subst(integrate(((1 + ~d*~x*((~c)^-1))^((1//2)*(1 + ~p)))*((1 - ~d*~x*((~c)^-1))^((1//2)*(~p - 1)))*((~a + ~b*~x)^~m), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ((~a)^(2~m))*integrate(((~a - ~b*sin(~e + ~f*~x))^(-~m))*((~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*(sin(~e + ~f*~x)^2), ~x)

@rule ~a*((1//2)*((~g)^-2))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~g*cos(~e + ~f*~x))^(2 + ~p)), ~x) - ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(1 + ~p))*((1//2)*((~b)^-1)*((~f)^-1)*((~g)^-1)*((1 + ~m)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*(sin(~e + ~f*~x)^2), ~x)

@rule ~b*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((~m)^-1)) - ((~g)^-2)*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(2 + ~p)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ((~a)^(-~p))*integrate(ExpandTrig(((~a + ~b*sin(~e + ~f*~x))^(~m + (1//2)*~p))*((~a - ~b*sin(~e + ~f*~x))^((1//2)*~p))*((~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule integrate(ExpandTrig((~g*cos(~e + ~f*~x))^~p, ((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^2), ~x)

@rule ((~b)^-2)*integrate((~a - ~b*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~a*((~g)^-1))^(2~m))*integrate(((~a - ~b*sin(~e + ~f*~x))^(-~m))*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p + 2~m)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~a*((~g)^-1))^(2~m))*integrate(((~a - ~b*sin(~e + ~f*~x))^(-~m))*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p + 2~m)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*(sin(~e + ~f*~x)^2), ~x)

@rule ~b*((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~a)^-1)*((~f)^-1)*((~g)^-1)*((1 + ~p + 2~m)^-1)) - (((~a)^-2)*((1 + ~p + 2~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*(~a*~m - ~b*(1 + ~p + 2~m)*sin(~e + ~f*~x))*((~g*cos(~e + ~f*~x))^~p), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*(sin(~e + ~f*~x)^2), ~x)

@rule (((~b)^-1)*((2 + ~m + ~p)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*(~b*(1 + ~m) - ~a*(1 + ~p)*sin(~e + ~f*~x))*((~g*cos(~e + ~f*~x))^~p), ~x) - ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~b)^-1)*((~f)^-1)*((~g)^-1)*((2 + ~m + ~p)^-1)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^2), ~x)

@rule ((~b)^-2)*integrate((~a - ~b*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule ((~a)^-2)*integrate(((~a + ~b*sin(~e + ~f*~x))^(2 + ~m))*((~d*sin(~e + ~f*~x))^~n)*(1 + sin(~e + ~f*~x)^2), ~x) - 2(((~a)^-1)*((~b)^-1)*((~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(2 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule ((~d)^-4)*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(4 + ~n)), ~x) + integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*(1 - 2(sin(~e + ~f*~x)^2))*((~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ((~a)^~m)*(((~f)^-1)*(sqrt(1 - sin(~e + ~f*~x))^-1)*(sqrt(1 + sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)*Subst(integrate(((1 + ~b*~x*((~a)^-1))^(~m + (1//2)*(~p - 1)))*((1 - ~b*~x*((~a)^-1))^((1//2)*(~p - 1)))*((~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule (((~a)^(2 - ~p))*((~f)^-1)*(sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(~a - ~b*sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)*Subst(integrate(((~a + ~b*~x)^(~m + (1//2)*~p - (1//2)))*((~a - ~b*~x)^((1//2)*~p - (1//2)))*((~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule integrate(ExpandTrig((~g*cos(~e + ~f*~x))^~p, ((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ~g*((~a)^~m)*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~f)^-1)*((1 - sin(~e + ~f*~x))^(-(1//2)*(~p - 1)))*((1 + sin(~e + ~f*~x))^(-(1//2)*(~p - 1))))*Subst(integrate(((1 + ~b*~x*((~a)^-1))^(~m + (1//2)*(~p - 1)))*((1 - ~b*~x*((~a)^-1))^((1//2)*(~p - 1)))*((~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ~g*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~f)^-1)*((~a + ~b*sin(~e + ~f*~x))^(-(1//2)*(~p - 1)))*((~a - ~b*sin(~e + ~f*~x))^(-(1//2)*(~p - 1))))*Subst(integrate(((~a + ~b*~x)^(~m + (1//2)*(~p - 1)))*((~a - ~b*~x)^((1//2)*(~p - 1)))*((~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*(sqrt(~d*sin(~e + ~f*~x))^-1), ~x)

@rule ((~g)^2)*(3 + 2~m)*((1//2)*((~a)^-1)*((1 + ~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(~p - 2))*(sqrt(~d*sin(~e + ~f*~x))^-1), ~x) - ~g*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~a)^-1)*((~d)^-1)*((~f)^-1)*((1 + ~m)^-1))*sqrt(~d*sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*(sqrt(~d*sin(~e + ~f*~x))^-1), ~x)

@rule 2~a*~m*(((~g)^-2)*((1 + 2~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(~m - 1))*((~g*cos(~e + ~f*~x))^(2 + ~p))*(sqrt(~d*sin(~e + ~f*~x))^-1), ~x) + 2((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^(1 + ~p))*(((~d)^-1)*((~f)^-1)*((~g)^-1)*((1 + 2~m)^-1))*sqrt(~d*sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^2), ~x)

@rule integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*(1 - (sin(~e + ~f*~x)^2))*((~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule (((~a)^-2)*((~b)^-1)*((~d)^-1)*((1 + ~m)^-1)*((1 + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*Simp(((~a)^2)*(1 + ~n)*(2 + ~n) + ~a*~b*(1 + ~m)*sin(~e + ~f*~x) - (((~a)^2)*(1 + ~n)*(3 + ~n) - (2 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2))*(sin(~e + ~f*~x)^2) - (2 + ~m + ~n)*(3 + ~m + ~n)*((~b)^2), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~a)^-1)*((~d)^-1)*((~f)^-1)*((1 + ~n)^-1))*cos(~e + ~f*~x) - ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(2 + ~n))*(((~a)^2)*(1 + ~n) - (2 + ~m + ~n)*((~b)^2))*(((~a)^-2)*((~b)^-1)*((~d)^-2)*((~f)^-1)*((1 + ~m)^-1)*((1 + ~n)^-1))*cos(~e + ~f*~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule ((~a + ~b*sin(~e + ~f*~x))^(2 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*((1 + ~n - ~m)*((~a)^2) - (2 + ~m + ~n)*((~b)^2))*(((~a)^-2)*((~b)^-2)*((~d)^-1)*((~f)^-1)*((1 + ~m)^-1)*((2 + ~m)^-1))*cos(~e + ~f*~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~a)^2 - ((~b)^2))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~a)^-1)*((~b)^-2)*((~d)^-1)*((~f)^-1)*((1 + ~m)^-1))*cos(~e + ~f*~x) - (((~a)^-2)*((~b)^-2)*((1 + ~m)^-1)*((2 + ~m)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(2 + ~m))*((~d*sin(~e + ~f*~x))^~n)*Simp(((~a)^2)*(1 + ~n)*(3 + ~n) + ~a*~b*(2 + ~m)*sin(~e + ~f*~x) - (((~a)^2)*(2 + ~n)*(3 + ~n) - (2 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2))*(sin(~e + ~f*~x)^2) - (2 + ~m + ~n)*(3 + ~m + ~n)*((~b)^2), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~a)^2 - ((~b)^2))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~a)^-1)*((~b)^-2)*((~d)^-1)*((~f)^-1)*((1 + ~m)^-1))*cos(~e + ~f*~x) - (((~a)^-1)*((~b)^-2)*((1 + ~m)^-1)*((4 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^~n)*Simp(((~a)^2)*(1 + ~n)*(3 + ~n) + ~a*~b*(1 + ~m)*sin(~e + ~f*~x) - (((~a)^2)*(2 + ~n)*(3 + ~n) - (3 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2))*(sin(~e + ~f*~x)^2) - (2 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2), ~x), ~x) - ((~a + ~b*sin(~e + ~f*~x))^(2 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~b)^-2)*((~d)^-1)*((~f)^-1)*((4 + ~m + ~n)^-1))*cos(~e + ~f*~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~a)^-1)*((~d)^-1)*((~f)^-1)*((1 + ~n)^-1))*cos(~e + ~f*~x) - (((~a)^-2)*((~d)^-2)*((1 + ~n)^-1)*((2 + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(2 + ~n))*Simp(~n*((~a)^2)*(2 + ~n) + ~a*~b*~m*sin(~e + ~f*~x) - (((~a)^2)*(1 + ~n)*(2 + ~n) - (2 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2))*(sin(~e + ~f*~x)^2) - (2 + ~m + ~n)*(3 + ~m + ~n)*((~b)^2), ~x), ~x) - ~b*(2 + ~m + ~n)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(2 + ~n))*(((~a)^-2)*((~d)^-2)*((~f)^-1)*((1 + ~n)^-1)*((2 + ~n)^-1))*cos(~e + ~f*~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule (((~a)^-1)*((~b)^-1)*((~d)^-1)*((1 + ~n)^-1)*((4 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(1 + ~n))*Simp(((~a)^2)*(1 + ~n)*(2 + ~n) + ~a*~b*(3 + ~m)*sin(~e + ~f*~x) - (((~a)^2)*(1 + ~n)*(3 + ~n) - (3 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2))*(sin(~e + ~f*~x)^2) - (2 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~a)^-1)*((~d)^-1)*((~f)^-1)*((1 + ~n)^-1))*cos(~e + ~f*~x) - ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(2 + ~n))*(((~b)^-1)*((~d)^-2)*((~f)^-1)*((4 + ~m + ~n)^-1))*cos(~e + ~f*~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^4), ~x)

@rule ~a*(3 + ~n)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~b)^-2)*((~d)^-1)*((~f)^-1)*((3 + ~m + ~n)^-1)*((4 + ~m + ~n)^-1))*cos(~e + ~f*~x) - (((~b)^-2)*((3 + ~m + ~n)^-1)*((4 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*Simp(((~a)^2)*(1 + ~n)*(3 + ~n) + ~a*~b*~m*sin(~e + ~f*~x) - (((~a)^2)*(2 + ~n)*(3 + ~n) - (3 + ~m + ~n)*(5 + ~m + ~n)*((~b)^2))*(sin(~e + ~f*~x)^2) - (3 + ~m + ~n)*(4 + ~m + ~n)*((~b)^2), ~x), ~x) - ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(2 + ~n))*(((~b)^-1)*((~d)^-2)*((~f)^-1)*((4 + ~m + ~n)^-1))*cos(~e + ~f*~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^6), ~x)

@rule (((~a)^-2)*((~b)^-2)*((~d)^-2)*((1 + ~n)^-1)*((2 + ~n)^-1)*((5 + ~m + ~n)^-1)*((6 + ~m + ~n)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(2 + ~n))*Simp(~a*~b*~m*(((~a)^2)*(1 + ~n)*(2 + ~n) - (5 + ~m + ~n)*(6 + ~m + ~n)*((~b)^2))*sin(~e + ~f*~x) + ((~a)^4)*(1 + ~n)*(2 + ~n)*(3 + ~n)*(5 + ~n) + (2 + ~m + ~n)*(3 + ~m + ~n)*(5 + ~m + ~n)*(6 + ~m + ~n)*((~b)^4) - ((2 + ~m + ~n)*(4 + ~m + ~n)*(5 + ~m + ~n)*(6 + ~m + ~n)*((~b)^4) + ((~a)^4)*(1 + ~n)*(2 + ~n)*(4 + ~n)*(5 + ~n) - ((~a)^2)*((~b)^2)*(1 + ~n)*(2 + ~n)*(5 + ~m + ~n)*(13 + 2~m + 2~n))*(sin(~e + ~f*~x)^2) - (6 + ~m + ~n)*((~b)^2)*(2 + ~n)*(1 + 2~n)*(5 + ~m + ~n)*((~a)^2), ~x), ~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*(((~a)^-1)*((~d)^-1)*((~f)^-1)*((1 + ~n)^-1))*cos(~e + ~f*~x) + ((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(4 + ~n))*(((~b)^-1)*((~d)^-4)*((~f)^-1)*((6 + ~m + ~n)^-1))*cos(~e + ~f*~x) - ~b*(2 + ~m + ~n)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(2 + ~n))*(((~a)^-2)*((~d)^-2)*((~f)^-1)*((1 + ~n)^-1)*((2 + ~n)^-1))*cos(~e + ~f*~x) - ~a*(5 + ~n)*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(3 + ~n))*(((~b)^-2)*((~d)^-3)*((~f)^-1)*((5 + ~m + ~n)^-1)*((6 + ~m + ~n)^-1))*cos(~e + ~f*~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule integrate(ExpandTrig(((1 - (sin(~e + ~f*~x)^2))^((1//2)*~p))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*(sin(~e + ~f*~x)^~n), ~x)

@rule integrate(ExpandTrig((~g*cos(~e + ~f*~x))^~p, ((~a + ~b*sin(~e + ~f*~x))^-1)*(sin(~e + ~f*~x)^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~a)^-1)*((~g)^2)*integrate(((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) - ~b*((~g)^2)*(((~a)^-2)*((~d)^-1))*integrate(((~d*sin(~e + ~f*~x))^(1 + ~n))*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) - ((~g)^2)*((~a)^2 - ((~b)^2))*(((~a)^-2)*((~d)^-2))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^(2 + ~n))*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~g)^2)*(((~a)^-1)*((~b)^-1))*integrate((~b - ~a*sin(~e + ~f*~x))*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) + ((~g)^2)*((~a)^2 - ((~b)^2))*(((~a)^-1)*((~b)^-1)*((~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^(1 + ~n))*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~b)^-2)*((~g)^2)*integrate((~a - ~b*sin(~e + ~f*~x))*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) - ((~b)^-2)*((~g)^2)*((~a)^2 - ((~b)^2))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ~a*((~d)^2)*(((~a)^2 - ((~b)^2))^-1)*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(~n - 2)), ~x) - ((~a)^2)*((~d)^2)*(((~g)^-2)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^(2 + ~p))*((~d*sin(~e + ~f*~x))^(~n - 2)), ~x) - ~b*~d*(((~a)^2 - ((~b)^2))^-1)*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(~n - 1)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ~a*~b*~d*(((~g)^-2)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^(2 + ~p))*((~d*sin(~e + ~f*~x))^(~n - 1)), ~x) - ~d*(((~a)^2 - ((~b)^2))^-1)*integrate((~b - ~a*sin(~e + ~f*~x))*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(~n - 1)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule (((~a)^2 - ((~b)^2))^-1)*integrate((~a - ~b*sin(~e + ~f*~x))*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x) - ((~b)^2)*(((~g)^-2)*(((~a)^2 - ((~b)^2))^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(2 + ~p)), ~x) => integrate((((~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(sin(~e + ~f*~x))^-1))*sqrt(~g*cos(~e + ~f*~x)), ~x)

@rule -5.656854249492381~g*((~f)^-1)*Subst(integrate(((~x)^2)*((((~a + ~b)*((~g)^2) + (~a - ~b)*((~x)^4))^-1)*(sqrt(1 - ((~g)^-2)*((~x)^4))^-1)), ~x), ~x, (sqrt(1 + sin(~e + ~f*~x))^-1)*sqrt(~g*cos(~e + ~f*~x))) => integrate((((~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(~d*sin(~e + ~f*~x))^-1))*sqrt(~g*cos(~e + ~f*~x)), ~x)

@rule (sqrt(~d*sin(~e + ~f*~x))^-1)*sqrt(sin(~e + ~f*~x))*integrate((((~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(sin(~e + ~f*~x))^-1))*sqrt(~g*cos(~e + ~f*~x)), ~x) => integrate((((~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(cos(~e + ~f*~x))^-1))*sqrt(~d*sin(~e + ~f*~x)), ~x)

@rule With(List(Set(~q, Rt((~b)^2 - ((~a)^2), 2))), 2.8284271247461903~d*(~b + ~q)*(((~f)^-1)*((~q)^-1))*Subst(integrate(((~a*((~x)^2) + ~d*(~b + ~q))*sqrt(1 - ((~d)^-2)*((~x)^4)))^-1, ~x), ~x, (sqrt(1 + cos(~e + ~f*~x))^-1)*sqrt(~d*sin(~e + ~f*~x))) - 2.8284271247461903~d*(~b - ~q)*(((~f)^-1)*((~q)^-1))*Subst(integrate(((~a*((~x)^2) + ~d*(~b - ~q))*sqrt(1 - ((~d)^-2)*((~x)^4)))^-1, ~x), ~x, (sqrt(1 + cos(~e + ~f*~x))^-1)*sqrt(~d*sin(~e + ~f*~x)))) => integrate((((~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(~g*cos(~e + ~f*~x))^-1))*sqrt(~d*sin(~e + ~f*~x)), ~x)

@rule (sqrt(~g*cos(~e + ~f*~x))^-1)*sqrt(cos(~e + ~f*~x))*integrate((((~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(cos(~e + ~f*~x))^-1))*sqrt(~d*sin(~e + ~f*~x)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ~d*((~b)^-1)*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(~n - 1)), ~x) - ~a*~d*((~b)^-1)*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(~n - 1)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~a)^-1)*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x) - ~b*(((~a)^-1)*((~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^-1)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(1 + ~n)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^2)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule 2~a*~b*((~d)^-1)*integrate(((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^(1 + ~n)), ~x) + integrate(((~a)^2 + ((~b)^2)*(sin(~e + ~f*~x)^2))*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule integrate(ExpandTrig((~g*cos(~e + ~f*~x))^~p, ((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~g*cos(~e + ~f*~x))^~p)*((~d*sin(~e + ~f*~x))^~n), ~x)

@rule ((~a)^-1)*((~g)^2)*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) - ((~g)^2)*((~a)^2 - ((~b)^2))*(((~a)^-2)*((~d)^-2))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~d*sin(~e + ~f*~x))^(2 + ~n))*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) - ~b*((~g)^2)*(((~a)^-2)*((~d)^-1))*integrate(((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~d*sin(~e + ~f*~x))^(1 + ~n))*((~g*cos(~e + ~f*~x))^(~p - 2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ((~a)^(2~m))*integrate(((~a - ~b*sin(~e + ~f*~x))^(-~m))*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ((~a*((~g)^-1))^(2~m))*integrate(((~a - ~b*sin(~e + ~f*~x))^(-~m))*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(~p + 2~m)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^2), ~x)

@rule ((~b)^-2)*integrate((~a - ~b*sin(~e + ~f*~x))*((~a + ~b*sin(~e + ~f*~x))^(1 + ~m))*((~c + ~d*sin(~e + ~f*~x))^~n), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule ((~a)^~m)*(((~f)^-1)*(sqrt(1 - sin(~e + ~f*~x))^-1)*(sqrt(1 + sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)*Subst(integrate(((1 + ~b*~x*((~a)^-1))^(~m + (1//2)*(~p - 1)))*((1 - ~b*~x*((~a)^-1))^((1//2)*(~p - 1)))*((~c + ~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule (((~a)^(2 - ~p))*((~f)^-1)*(sqrt(~a + ~b*sin(~e + ~f*~x))^-1)*(sqrt(~a - ~b*sin(~e + ~f*~x))^-1))*cos(~e + ~f*~x)*Subst(integrate(((~a + ~b*~x)^(~m + (1//2)*~p - (1//2)))*((~a - ~b*~x)^((1//2)*~p - (1//2)))*((~c + ~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule integrate(ExpandTrig((~g*cos(~e + ~f*~x))^~p, ((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~g*((~a)^~m)*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~f)^-1)*((1 - sin(~e + ~f*~x))^(-(1//2)*(~p - 1)))*((1 + sin(~e + ~f*~x))^(-(1//2)*(~p - 1))))*Subst(integrate(((1 + ~b*~x*((~a)^-1))^(~m + (1//2)*(~p - 1)))*((1 - ~b*~x*((~a)^-1))^((1//2)*(~p - 1)))*((~c + ~d*~x)^~n), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule ~g*((~g*cos(~e + ~f*~x))^(~p - 1))*(((~f)^-1)*((~a + ~b*sin(~e + ~f*~x))^(-(1//2)*(~p - 1)))*((~a - ~b*sin(~e + ~f*~x))^(-(1//2)*(~p - 1))))*Subst(integrate(((~a + ~b*~x)^(~m + (1//2)*(~p - 1)))*((~c + ~d*~x)^~n)*((~a - ~b*~x)^((1//2)*(~p - 1))), ~x), ~x, sin(~e + ~f*~x)) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^2), ~x)

@rule integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(1 - (sin(~e + ~f*~x)^2)), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*(cos(~e + ~f*~x)^~p), ~x)

@rule integrate(ExpandTrig(((1 - (sin(~e + ~f*~x)^2))^((1//2)*~p))*((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule integrate(ExpandTrig(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x)

@rule Unintegrable(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^~p), ~x) => integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*sec(~e + ~f*~x))^~p), ~x)

@rule ((~g)^(2IntPart(~p)))*((~g*cos(~e + ~f*~x))^FracPart(~p))*((~g*Sec(~e + ~f*~x))^FracPart(~p))*integrate(((~a + ~b*sin(~e + ~f*~x))^~m)*((~c + ~d*sin(~e + ~f*~x))^~n)*((~g*cos(~e + ~f*~x))^(-~p)), ~x) => integrate(((~a + ~b*cos(~e + ~f*~x))^~m)*((~c + ~d*cos(~e + ~f*~x))^~n)*((~g*csc(~e + ~f*~x))^~p), ~x)

