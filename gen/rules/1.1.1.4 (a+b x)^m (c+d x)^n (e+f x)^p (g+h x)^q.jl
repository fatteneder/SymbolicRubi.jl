@rule (Coefficient(~u, ~x, 1)^-1)*Subst(integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x), ~x, ~u) => integrate((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x)

@rule integrate(ExpandIntegrand((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x), ~x) => integrate((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x)

@rule (~b*(~d*(~e*~h + ~f*~g) - ~c*~f*~h*(2 + ~m)) + ~a*~d*~f*~h*~m)*(((~b)^-2)*((~d)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n), ~x) + (~d*~e*~g*((~b)^2) + ~b*~f*~h*~x*(1 + ~m)*(~b*~c - ~a*~d) - ~a*~b*(~d*(~e*~h + ~f*~g) - ~c*~f*~h*(1 + ~m)) - ~d*~f*~h*~m*((~a)^2))*((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*(((~b)^-2)*((~d)^-1)*((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)) => integrate((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x)

@rule (~x*((~e*~g*(2 + ~m + ~n)*((~d)^2) + ~f*~h*((~c)^2)*(1 + ~m) - ~c*~d*(1 + ~m)*(~e*~h + ~f*~g))*((~b)^2) + ~f*~h*((~a)^2)*((~d)^2)*(1 + ~n) - ~a*~b*((~d)^2)*(1 + ~n)*(~e*~h + ~f*~g)) + ~a*~b*(~f*~h*((~c)^2)*(1 + ~m) + ~e*~g*((~d)^2)*(1 + ~m) - ~c*~d*(~e*~h + ~f*~g)*(2 + ~m + ~n)) + ~c*~d*~f*~h*((~a)^2)*(1 + ~n) + ~c*~d*~e*~g*((~b)^2)*(1 + ~n))*((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*(((~b)^-1)*((~d)^-1)*((1 + ~m)^-1)*((1 + ~n)^-1)*((~b*~c - ~a*~d)^-2)) - ((~f*~h*(2 + (~m)^2 + 3~m)*((~c)^2) + ~e*~g*(6 + (~m)^2 + ~m*(5 + 2~n) + (~n)^2 + 5~n)*((~d)^2) - ~c*~d*(1 + ~m)*(~e*~h + ~f*~g)*(3 + ~m + ~n))*((~b)^2) + ~f*~h*(2 + (~n)^2 + 3~n)*((~a)^2)*((~d)^2) + ~a*~b*~d*(1 + ~n)*(2~c*~f*~h*(1 + ~m) - ~d*(~e*~h + ~f*~g)*(3 + ~m + ~n)))*(((~b)^-1)*((~d)^-1)*((1 + ~m)^-1)*((1 + ~n)^-1)*((~b*~c - ~a*~d)^-2))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n)), ~x) => integrate((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x)

@rule (~f*~h*((~b)^-2) - ~d*(3 + ~m + ~n)*(((~b)^2)*(~c*(1 + ~m)*(~e*~h + ~f*~g) - ~d*~e*~g*(2 + ~m + ~n)) + ~d*~f*~h*((~a)^2)*(~m - ~n) - ~a*~b*(2~c*~f*~h*(1 + ~m) - ~d*(1 + ~n)*(~e*~h + ~f*~g)))*(((~b)^-2)*((1 + ~m)^-1)*((2 + ~m)^-1)*((~b*~c - ~a*~d)^-2)))*integrate(((~a + ~b*~x)^(2 + ~m))*((~c + ~d*~x)^~n), ~x) + (~b*~x*(((~b)^2)*(~c*(1 + ~m)*(~e*~h + ~f*~g) - ~d*~e*~g*(2 + ~m + ~n)) + ~d*~f*~h*((~a)^2)*(~m - ~n) - ~a*~b*(2~c*~f*~h*(1 + ~m) - ~d*(1 + ~n)*(~e*~h + ~f*~g))) + ~c*~e*~g*((~b)^3)*(2 + ~m) - ~a*((~b)^2)*(~c*(~e*~h + ~f*~g) + ~d*~e*~g*(4 + ~n + 2~m)) - ~b*((~a)^2)*(~c*~f*~h*~m - ~d*(~e*~h + ~f*~g)*(3 + ~m + ~n)) - ~d*~f*~h*((~a)^3)*(2 + ~n))*((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*(((~b)^-2)*((1 + ~m)^-1)*((2 + ~m)^-1)*((~b*~c - ~a*~d)^-2)) => integrate((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x)

@rule (~a*~b*(~c*~f*~h*(1 + ~m) - ~d*(~e*~h + ~f*~g)*(3 + ~m + ~n)) + ~d*~e*~g*(3 + ~m + ~n)*((~b)^2) + ~d*~f*~h*((~a)^2)*(2 + ~n) + ~b*~f*~h*~x*(1 + ~m)*(~b*~c - ~a*~d))*((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*(((~b)^-2)*((~d)^-1)*((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((3 + ~m + ~n)^-1)) - ((~e*~g*(2 + ~m + ~n)*(3 + ~m + ~n)*((~d)^2) + ~f*~h*((~c)^2)*(1 + ~m)*(2 + ~m) - ~c*~d*(1 + ~m)*(~e*~h + ~f*~g)*(3 + ~m + ~n))*((~b)^2) + ~a*~b*~d*(1 + ~n)*(2~c*~f*~h*(1 + ~m) - ~d*(~e*~h + ~f*~g)*(3 + ~m + ~n)) + ~f*~h*((~a)^2)*((~d)^2)*(1 + ~n)*(2 + ~n))*(((~b)^-2)*((~d)^-1)*((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((3 + ~m + ~n)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n), ~x) => integrate((~e + ~f*~x)*(~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x)

@rule ((~e*~g*(2 + ~m + ~n)*(3 + ~m + ~n)*((~d)^2) + ~f*~h*((~c)^2)*(1 + ~m)*(2 + ~m) - ~c*~d*(1 + ~m)*(~e*~h + ~f*~g)*(3 + ~m + ~n))*((~b)^2) + ~a*~b*~d*(1 + ~n)*(2~c*~f*~h*(1 + ~m) - ~d*(~e*~h + ~f*~g)*(3 + ~m + ~n)) + ~f*~h*((~a)^2)*((~d)^2)*(1 + ~n)*(2 + ~n))*(((~b)^-2)*((~d)^-2)*((2 + ~m + ~n)^-1)*((3 + ~m + ~n)^-1))*integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n), ~x) + (~b*~d*(~e*~h + ~f*~g)*(3 + ~m + ~n) + ~b*~d*~f*~h*~x*(2 + ~m + ~n) - ~a*~d*~f*~h*(2 + ~n) - ~b*~c*~f*~h*(2 + ~m))*((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*(((~b)^-2)*((~d)^-2)*((2 + ~m + ~n)^-1)*((3 + ~m + ~n)^-1)) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule integrate(ExpandIntegrand((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x), ~x) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule ((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^(1 + ~p))*(~b*~g - ~a*~h)*(((~b)^-1)*((1 + ~m)^-1)*((~b*~e - ~a*~f)^-1)) - (((~b)^-1)*((1 + ~m)^-1)*((~b*~e - ~a*~f)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(~n - 1))*((~e + ~f*~x)^~p)*Simp((~b*~g - ~a*~h)*(~d*~e*~n + ~c*~f*(1 + ~p)) + ~d*~x*(~b*(1 + ~m)*(~f*~g - ~e*~h) + ~f*(~b*~g - ~a*~h)*(1 + ~n + ~p)) + ~b*~c*(1 + ~m)*(~f*~g - ~e*~h), ~x), ~x) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule ((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^(1 + ~p))*(~b*~g - ~a*~h)*(((~b)^-1)*((1 + ~m)^-1)*((~b*~e - ~a*~f)^-1)) - (((~b)^-1)*((1 + ~m)^-1)*((~b*~e - ~a*~f)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(~n - 1))*((~e + ~f*~x)^~p)*Simp((~b*~g - ~a*~h)*(~d*~e*~n + ~c*~f*(1 + ~p)) + ~d*~x*(~b*(1 + ~m)*(~f*~g - ~e*~h) + ~f*(~b*~g - ~a*~h)*(1 + ~n + ~p)) + ~b*~c*(1 + ~m)*(~f*~g - ~e*~h), ~x), ~x) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule (((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*Simp((1 + ~m)*(~a*~d*~f*~g + ~b*~c*~e*~h - ~b*~g*(~c*~f + ~d*~e)) - (~b*~g - ~a*~h)*(~d*~e*(1 + ~n) + ~c*~f*(1 + ~p)) - ~d*~f*~x*(~b*~g - ~a*~h)*(3 + ~m + ~n + ~p), ~x), ~x) + ((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*((~e + ~f*~x)^(1 + ~p))*(~b*~g - ~a*~h)*(((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1)) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule (((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*Simp((1 + ~m)*(~a*~d*~f*~g + ~b*~c*~e*~h - ~b*~g*(~c*~f + ~d*~e)) - (~b*~g - ~a*~h)*(~d*~e*(1 + ~n) + ~c*~f*(1 + ~p)) - ~d*~f*~x*(~b*~g - ~a*~h)*(3 + ~m + ~n + ~p), ~x), ~x) + ((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*((~e + ~f*~x)^(1 + ~p))*(~b*~g - ~a*~h)*(((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1)) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule (((~d)^-1)*((~f)^-1)*((2 + ~m + ~n + ~p)^-1))*integrate(((~a + ~b*~x)^(~m - 1))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*Simp(~x*(~h*(~a*~d*~f*~m - ~b*(~c*~f*(1 + ~m + ~p) + ~d*~e*(1 + ~m + ~n))) + ~b*~d*~f*~g*(2 + ~m + ~n + ~p)) + ~a*~d*~f*~g*(2 + ~m + ~n + ~p) - ~h*(~a*(~d*~e*(1 + ~n) + ~c*~f*(1 + ~p)) + ~b*~c*~e*~m), ~x), ~x) + ~h*((~a + ~b*~x)^~m)*((~c + ~d*~x)^(1 + ~n))*((~e + ~f*~x)^(1 + ~p))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n + ~p)^-1)) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule (((~d)^-1)*((~f)^-1)*((2 + ~m + ~n + ~p)^-1))*integrate(((~a + ~b*~x)^(~m - 1))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*Simp(~x*(~h*(~a*~d*~f*~m - ~b*(~c*~f*(1 + ~m + ~p) + ~d*~e*(1 + ~m + ~n))) + ~b*~d*~f*~g*(2 + ~m + ~n + ~p)) + ~a*~d*~f*~g*(2 + ~m + ~n + ~p) - ~h*(~a*(~d*~e*(1 + ~n) + ~c*~f*(1 + ~p)) + ~b*~c*~e*~m), ~x), ~x) + ~h*((~a + ~b*~x)^~m)*((~c + ~d*~x)^(1 + ~n))*((~e + ~f*~x)^(1 + ~p))*(((~d)^-1)*((~f)^-1)*((2 + ~m + ~n + ~p)^-1)) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule (((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*Simp((1 + ~m)*(~a*~d*~f*~g + ~b*~c*~e*~h - ~b*~g*(~c*~f + ~d*~e)) - (~b*~g - ~a*~h)*(~d*~e*(1 + ~n) + ~c*~f*(1 + ~p)) - ~d*~f*~x*(~b*~g - ~a*~h)*(3 + ~m + ~n + ~p), ~x), ~x) + ((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^(1 + ~n))*((~e + ~f*~x)^(1 + ~p))*(~b*~g - ~a*~h)*(((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1)) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^-1), ~x)

@rule ((~f)^(-2 - ~m - ~n))*integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^(-1 - ~m))*ExpandToSum(((~e + ~f*~x)^-1)*(((~f)^(2 + ~m + ~n))*(~g + ~h*~x)*((~c + ~d*~x)^(1 + ~m + ~n)) - ((~c*~f - ~d*~e)^(1 + ~m + ~n))*(~f*~g - ~e*~h)), ~x), ~x) + ((~f)^(-2 - ~m - ~n))*((~c*~f - ~d*~e)^(1 + ~m + ~n))*(~f*~g - ~e*~h)*integrate(((~a + ~b*~x)^~m)*(((~c + ~d*~x)^(-1 - ~m))*((~e + ~f*~x)^-1)), ~x) => integrate((~g + ~h*~x)*((~e + ~f*~x)^~p)*(((~a + ~b*~x)^-1)*((~c + ~d*~x)^-1)), ~x)

@rule ((~b*~c - ~a*~d)^-1)*(~b*~g - ~a*~h)*integrate(((~a + ~b*~x)^-1)*((~e + ~f*~x)^~p), ~x) - ((~b*~c - ~a*~d)^-1)*(~d*~g - ~c*~h)*integrate(((~c + ~d*~x)^-1)*((~e + ~f*~x)^~p), ~x) => integrate((~g + ~h*~x)*((~a + ~b*~x)^-1)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule ~h*((~b)^-1)*integrate(((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x) + ((~b)^-1)*(~b*~g - ~a*~h)*integrate(((~a + ~b*~x)^-1)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x) => integrate((~g + ~h*~x)*((sqrt(~a + ~b*~x)^-1)*(sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)), ~x)

@rule ~h*((~f)^-1)*integrate(((sqrt(~a + ~b*~x)^-1)*(sqrt(~c + ~d*~x)^-1))*sqrt(~e + ~f*~x), ~x) + ((~f)^-1)*(~f*~g - ~e*~h)*integrate((sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x))^-1, ~x) => integrate((~g + ~h*~x)*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x)

@rule ((~b)^-1)*(~b*~g - ~a*~h)*integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x) + ~h*((~b)^-1)*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p), ~x) => integrate(((~a + ~b*~x)^~m)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x), ~x)

@rule ((~a + ~b*~x)^(1 + ~m))*(((~b)^-1)*((1 + ~m)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) - ((1//2)*((~b)^-1)*((1 + ~m)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~x*(2~c*~f*~h + 2~d*~f*~g + 2~d*~e*~h) + ~c*~f*~g + ~c*~e*~h + ~d*~e*~g + 3~d*~f*~h*((~x)^2), ~x), ~x) => integrate(((~a + ~b*~x)^~m)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x), ~x)

@rule (((~b)^-1)*((5 + 2~m)^-1))*integrate(((~a + ~b*~x)^~m)*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~x*(2~b*(~c*~f*~g + ~c*~e*~h + ~d*~e*~g) - 2~a*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h)) + 3~b*~c*~e*~g - ~a*(~c*~f*~g + ~c*~e*~h + ~d*~e*~g) - ((~x)^2)*(3~a*~d*~f*~h - ~b*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h)), ~x), ~x) + 2((~a + ~b*~x)^(1 + ~m))*(((~b)^-1)*((5 + 2~m)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) => integrate(((~a + ~b*~x)^~m)*(sqrt(~c + ~d*~x)^-1)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x), ~x)

@rule 2((~a + ~b*~x)^~m)*(((~d)^-1)*((3 + 2~m)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) - (((~d)^-1)*((3 + 2~m)^-1))*integrate(((~a + ~b*~x)^(~m - 1))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~a*(~c*(~e*~h + ~f*~g) - 2~d*~e*~g*(1 + ~m)) + 2~b*~c*~e*~g*~m - ((~x)^2)*(~b*(~d*(~e*~h + ~f*~g) - 2~c*~f*~h*(1 + ~m)) + 2~a*~d*~f*~h*~m) - ~x*(~b*(2~d*~e*~g - ~c*(1 + 2~m)*(~e*~h + ~f*~g)) - ~a*(2~c*~f*~h - ~d*(~e*~h + ~f*~g)*(1 + 2~m))), ~x), ~x) => integrate((((~a + ~b*~x)^-1)*(sqrt(~c + ~d*~x)^-1))*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x), ~x)

@rule ((~b)^-2)*integrate(((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~b*~e*~h + ~b*~f*~g + ~b*~f*~h*~x - ~a*~f*~h, ~x), ~x) + ((~b)^-2)*(~b*~e - ~a*~f)*(~b*~g - ~a*~h)*integrate(((~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x) => integrate(((~a + ~b*~x)^~m)*(sqrt(~c + ~d*~x)^-1)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x), ~x)

@rule ((~a + ~b*~x)^(1 + ~m))*(((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) - (((2 + 2~m)^-1)*((~b*~c - ~a*~d)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~c*(~e*~h + ~f*~g) + ~x*(2~c*~f*~h + 2~d*(2 + ~m)*(~e*~h + ~f*~g)) + ~d*~e*~g*(3 + 2~m) + ~d*~f*~h*((~x)^2)*(5 + 2~m), ~x), ~x) => integrate(((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~a + ~b*~x), ~x)

@rule (2~a + 2~b*~x)*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1))*sqrt((~c + ~d*~x)*(~b*~g - ~a*~h)*(((~a + ~b*~x)^-1)*((~d*~g - ~c*~h)^-1)))*sqrt((~e + ~f*~x)*(~b*~g - ~a*~h)*(((~a + ~b*~x)^-1)*((~f*~g - ~e*~h)^-1)))*Subst(integrate(((~h - ~b*((~x)^2))*sqrt(1 + ((~x)^2)*((~d*~g - ~c*~h)^-1)*(~b*~c - ~a*~d))*sqrt(1 + ((~x)^2)*((~f*~g - ~e*~h)^-1)*(~b*~e - ~a*~f)))^-1, ~x), ~x, (sqrt(~a + ~b*~x)^-1)*sqrt(~g + ~h*~x)) => integrate(((~a + ~b*~x)^((3//1)*(1//2)))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1)), ~x)

@rule ~b*((~d)^-1)*integrate(((sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x), ~x) - ((~d)^-1)*(~b*~c - ~a*~d)*integrate(((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~a + ~b*~x), ~x) => integrate(((~a + ~b*~x)^~m)*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1)), ~x)

@rule 2((~b)^2)*((~a + ~b*~x)^(~m - 2))*(((~d)^-1)*((~f)^-1)*((~h)^-1)*((2~m - 1)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) - (((~d)^-1)*((~f)^-1)*((~h)^-1)*((2~m - 1)^-1))*integrate(((~a + ~b*~x)^(~m - 3))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~a*(~c*~f*~g + ~c*~e*~h + ~d*~e*~g)*((~b)^2) + ~b*~x*(((~b)^2)*(2~m - 3)*(~c*~f*~g + ~c*~e*~h + ~d*~e*~g) + 2~a*~b*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h) - 3~d*~f*~h*((~a)^2)*(2~m - 1)) + 2~c*~e*~g*((~b)^3)*(~m - 2) - 2((~b)^2)*(~m - 1)*((~x)^2)*(3~a*~d*~f*~h - ~b*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h)) - ~d*~f*~h*((~a)^3)*(2~m - 1), ~x), ~x) => integrate(((~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x)

@rule -2Subst(integrate((sqrt(Simp(((~d)^-1)*(~d*~e - ~c*~f) + ~f*((~d)^-1)*((~x)^2), ~x))*sqrt(Simp(((~d)^-1)*(~d*~g - ~c*~h) + ~h*((~d)^-1)*((~x)^2), ~x))*Simp(~b*~c - ~a*~d - ~b*((~x)^2), ~x))^-1, ~x), ~x, sqrt(~c + ~d*~x)) => integrate(((~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x)

@rule -2Subst(integrate((sqrt(Simp(((~d)^-1)*(~d*~e - ~c*~f) + ~f*((~d)^-1)*((~x)^2), ~x))*sqrt(Simp(((~d)^-1)*(~d*~g - ~c*~h) + ~h*((~d)^-1)*((~x)^2), ~x))*Simp(~b*~c - ~a*~d - ~b*((~x)^2), ~x))^-1, ~x), ~x, sqrt(~c + ~d*~x)) => integrate((sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x)

@rule 2(((~f*~g - ~e*~h)^-1)*(sqrt(~c + ~d*~x)^-1)*(sqrt((~g + ~h*~x)*(~a*~f - ~b*~e)*(((~a + ~b*~x)^-1)*((~f*~g - ~e*~h)^-1)))^-1))*sqrt(~g + ~h*~x)*sqrt((~c + ~d*~x)*(~b*~e - ~a*~f)*(((~a + ~b*~x)^-1)*((~d*~e - ~c*~f)^-1)))*Subst(integrate((sqrt(1 + ((~x)^2)*((~d*~e - ~c*~f)^-1)*(~b*~c - ~a*~d))*sqrt(1 - ((~x)^2)*((~f*~g - ~e*~h)^-1)*(~b*~g - ~a*~h)))^-1, ~x), ~x, (sqrt(~a + ~b*~x)^-1)*sqrt(~e + ~f*~x)) => integrate((((~a + ~b*~x)^((3//1)*(1//2)))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x)

@rule ~b*((~b*~c - ~a*~d)^-1)*integrate((((~a + ~b*~x)^((-3//1)*(1//2)))*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~c + ~d*~x), ~x) - ~d*((~b*~c - ~a*~d)^-1)*integrate((sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x) => integrate(((~a + ~b*~x)^~m)*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1)), ~x)

@rule ((~b)^2)*((~a + ~b*~x)^(1 + ~m))*(((1 + ~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1)*((~b*~g - ~a*~h)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) - (((2 + 2~m)^-1)*((~b*~c - ~a*~d)^-1)*((~b*~e - ~a*~f)^-1)*((~b*~g - ~a*~h)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(((~b)^2)*(3 + 2~m)*(~c*~f*~g + ~c*~e*~h + ~d*~e*~g) + 2~d*~f*~h*((~a)^2)*(1 + ~m) + ~d*~f*~h*((~b)^2)*((~x)^2)*(5 + 2~m) - 2~b*~x*(~a*~d*~f*~h*(1 + ~m) - ~b*(2 + ~m)*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h)) - 2~a*~b*(1 + ~m)*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h), ~x), ~x) => integrate(((sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x), ~x)

@rule (~a*~d*~f*~h - ~b*(~d*~f*~g + ~d*~e*~h - ~c*~f*~h))*((1//2)*((~f)^-2)*((~h)^-1))*integrate(((sqrt(~a + ~b*~x)^-1)*(sqrt(~c + ~d*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~e + ~f*~x), ~x) + (((~h)^-1)*(sqrt(~e + ~f*~x)^-1))*sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~g + ~h*~x) + (~d*~e - ~c*~f)*(~b*~e*~h + ~b*~f*~g - 2~a*~f*~h)*((1//2)*((~f)^-2)*((~h)^-1))*integrate((sqrt(~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x) - (~d*~e - ~c*~f)*(~f*~g - ~e*~h)*((1//2)*((~f)^-1)*((~h)^-1))*integrate((((~e + ~f*~x)^((-3//1)*(1//2)))*(sqrt(~c + ~d*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~a + ~b*~x), ~x) => integrate(((~a + ~b*~x)^~m)*((sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~c + ~d*~x), ~x)

@rule 2~b*((~a + ~b*~x)^(~m - 1))*(((~f)^-1)*((~h)^-1)*((1 + 2~m)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) - (((~f)^-1)*((~h)^-1)*((1 + 2~m)^-1))*integrate(((~a + ~b*~x)^(~m - 2))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~x*(((~b)^2)*(2~m - 1)*(~c*(~e*~h + ~f*~g) + ~d*~e*~g) + 2~a*~b*(~d*~f*~g + ~d*~e*~h - 2~c*~f*~h*~m) - ~d*~f*~h*((~a)^2)*(1 + 2~m)) + ~a*~b*(~c*(~e*~h + ~f*~g) + ~d*~e*~g) + 2~c*~e*~g*((~b)^2)*(~m - 1) - ~b*((~x)^2)*(~b*(~c*~f*~h - 2~d*~m*(~e*~h + ~f*~g)) + ~a*~d*~f*~h*(4~m - 1)) - ~c*~f*~h*((~a)^2)*(1 + 2~m), ~x), ~x) => integrate((((~a + ~b*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~c + ~d*~x), ~x)

@rule ~d*((~b)^-1)*integrate((sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x) + ((~b)^-1)*(~b*~c - ~a*~d)*integrate(((~a + ~b*~x)*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ~x) => integrate((((~a + ~b*~x)^((-3//1)*(1//2)))*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~c + ~d*~x), ~x)

@rule -2(((~b*~e - ~a*~f)^-1)*(sqrt(~g + ~h*~x)^-1)*(sqrt((~c + ~d*~x)*(~b*~e - ~a*~f)*(((~a + ~b*~x)^-1)*((~d*~e - ~c*~f)^-1)))^-1))*sqrt(~c + ~d*~x)*sqrt((~g + ~h*~x)*(~a*~f - ~b*~e)*(((~a + ~b*~x)^-1)*((~f*~g - ~e*~h)^-1)))*Subst(integrate((sqrt(1 - ((~x)^2)*((~f*~g - ~e*~h)^-1)*(~b*~g - ~a*~h))^-1)*sqrt(1 + ((~x)^2)*((~d*~e - ~c*~f)^-1)*(~b*~c - ~a*~d)), ~x), ~x, (sqrt(~a + ~b*~x)^-1)*sqrt(~e + ~f*~x)) => integrate(((~a + ~b*~x)^~m)*((sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*sqrt(~c + ~d*~x), ~x)

@rule (((2 + 2~m)^-1)*((~b*~e - ~a*~f)^-1)*((~b*~g - ~a*~h)^-1))*integrate(((~a + ~b*~x)^(1 + ~m))*((sqrt(~c + ~d*~x)^-1)*(sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1))*Simp(~x*(2~a*~d*~f*~h*(1 + ~m) - 2~b*(2 + ~m)*(~c*~f*~h + ~d*~f*~g + ~d*~e*~h)) + 2~a*~c*~f*~h*(1 + ~m) - ~b*(~d*~e*~g + ~c*(3 + 2~m)*(~e*~h + ~f*~g)) - ~b*~d*~f*~h*((~x)^2)*(5 + 2~m), ~x), ~x) + ~b*((~a + ~b*~x)^(1 + ~m))*(((1 + ~m)^-1)*((~b*~e - ~a*~f)^-1)*((~b*~g - ~a*~h)^-1))*sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x) => integrate(((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q)*(((~a + ~b*~x)^-1)*((~c + ~d*~x)^-1)), ~x)

@rule ((~b*~c - ~a*~d)^-1)*(~b*~e - ~a*~f)*integrate(((~a + ~b*~x)^-1)*((~e + ~f*~x)^(~p - 1))*((~g + ~h*~x)^~q), ~x) - ((~b*~c - ~a*~d)^-1)*(~d*~e - ~c*~f)*integrate(((~c + ~d*~x)^-1)*((~e + ~f*~x)^(~p - 1))*((~g + ~h*~x)^~q), ~x) => integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((sqrt(~e + ~f*~x)^-1)*(sqrt(~g + ~h*~x)^-1)), ~x)

@rule integrate(ExpandIntegrand((sqrt(~c + ~d*~x)*sqrt(~e + ~f*~x)*sqrt(~g + ~h*~x))^-1, ((~a + ~b*~x)^~m)*((~c + ~d*~x)^(~n + 2^-1)), ~x), ~x) => integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q), ~x)

@rule integrate(ExpandIntegrand(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q), ~x), ~x) => integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q), ~x)

@rule ~h*((~b)^-1)*integrate(((~a + ~b*~x)^(1 + ~m))*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^(~q - 1)), ~x) + ((~b)^-1)*(~b*~g - ~a*~h)*integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^(~q - 1)), ~x) => integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q), ~x)

@rule CannotIntegrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q), ~x) => integrate(((~a + ~b*~u)^~m)*((~c + ~d*~u)^~n)*((~e + ~f*~u)^~p)*((~g + ~h*~u)^~q), ~x)

@rule (Coefficient(~u, ~x, 1)^-1)*Subst(integrate(((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q), ~x), ~x, ~u) => integrate((~i*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q))^~r, ~x)

@rule ((~i*((~a + ~b*~x)^~m)*((~c + ~d*~x)^~n)*((~e + ~f*~x)^~p)*((~g + ~h*~x)^~q))^~r)*(((~a + ~b*~x)^(-~m*~r))*((~c + ~d*~x)^(-~n*~r))*((~e + ~f*~x)^(-~p*~r))*((~g + ~h*~x)^(-~q*~r)))*integrate(((~a + ~b*~x)^(~m*~r))*((~c + ~d*~x)^(~n*~r))*((~e + ~f*~x)^(~p*~r))*((~g + ~h*~x)^(~q*~r)), ~x) => integrate((~u)^~m, ~x)

@rule integrate(ExpandToSum(~u, ~x)^~m, ~x) => integrate(((~u)^~m)*((~v)^~n), ~x)

@rule integrate((ExpandToSum(~u, ~x)^~m)*(ExpandToSum(~v, ~x)^~n), ~x) => integrate(((~u)^~m)*((~v)^~n)*((~w)^~p), ~x)

@rule integrate((ExpandToSum(~u, ~x)^~m)*(ExpandToSum(~v, ~x)^~n)*(ExpandToSum(~w, ~x)^~p), ~x) => integrate(((~u)^~m)*((~v)^~n)*((~w)^~p)*((~z)^~q), ~x)

