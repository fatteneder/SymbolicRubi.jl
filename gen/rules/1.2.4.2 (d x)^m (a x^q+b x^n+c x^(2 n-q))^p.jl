@rule (Coefficient(~u, ~x, 1)^-1)*Subst(integrate((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p, ~x), ~x, ~u) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule integrate(((~x)^~m)*(((~a + ~b + ~c)*((~x)^~n))^~p), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule integrate(((~x)^(~m + ~p*~q))*((~a + ~b*((~x)^(~n - ~q)) + ~c*((~x)^(2~n - 2~q)))^~p), ~x) => integrate(((~x)^~m)*(sqrt(~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^-1), ~x)

@rule -2((~n - ~q)^-1)*Subst(integrate((4~a - ((~x)^2))^-1, ~x), ~x, ((~x)^(1 + ~m))*(2~a + ~b*((~x)^(~n - ~q)))*(sqrt(~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^-1)) => integrate(((~x)^~m)*(sqrt(~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^-1), ~x)

@rule ((~x)^((1//2)*~q))*(sqrt(~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^-1)*sqrt(~a + ~b*((~x)^(~n - ~q)) + ~c*((~x)^(2~n - 2~q)))*integrate(((~x)^(~m - (1//2)*~q))*(sqrt(~a + ~b*((~x)^(~n - ~q)) + ~c*((~x)^(2~n - 2~q)))^-1), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^((-3//1)*(1//2))), ~x)

@rule -2(~b + 2~c*~x)*((~x)^((1//2)*(~n - 1)))*((((~b)^2 - 4~a*~c)^-1)*(sqrt(~a*((~x)^(~n - 1)) + ~b*((~x)^~n) + ~c*((~x)^(1 + ~n)))^-1)) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^((-3//1)*(1//2))), ~x)

@rule ((~x)^((1//2)*(~n - 1)))*(4~a + 2~b*~x)*((((~b)^2 - 4~a*~c)^-1)*(sqrt(~a*((~x)^(~n - 1)) + ~b*((~x)^~n) + ~c*((~x)^(1 + ~n)))^-1)) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(~m - ~n))*((~a*((~x)^(~n - 1)) + ~b*((~x)^~n) + ~c*((~x)^(1 + ~n)))^(1 + ~p))*((1//2)*((~c)^-1)*((1 + ~p)^-1)) - ~b*((1//2)*((~c)^-1))*integrate(((~x)^(~m - 1))*((~a*((~x)^(~n - 1)) + ~b*((~x)^~n) + ~c*((~x)^(1 + ~n)))^~p), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule (~b + 2~c*((~x)^(~n - ~q)))*((~x)^(1 + ~m + ~q - ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p)*((1//2)*((~c)^-1)*((~n - ~q)^-1)*((1 + 2~p)^-1)) - ~p*((~b)^2 - 4~a*~c)*((1//2)*((~c)^-1)*((1 + 2~p)^-1))*integrate(((~x)^(~m + ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(~p - 1)), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(1 + ~m + ~q - ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p)*(~b*~p*(~n - ~q) + ~c*(1 + ~m + ~p*~q + (2~p - 1)*(~n - ~q))*((~x)^(~n - ~q)))*(((~c)^-1)*((1 + ~m + ~p*(2~n - ~q))^-1)*((1 + ~m + ~p*~q + (2~p - 1)*(~n - ~q))^-1)) + ~p*(~n - ~q)*(((~c)^-1)*((1 + ~m + ~p*(2~n - ~q))^-1)*((1 + ~m + ~p*~q + (2~p - 1)*(~n - ~q))^-1))*integrate(((~x)^(~m + 2~q - ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(~p - 1))*Simp(((~x)^(~n - ~q))*(2~a*~c*(1 + ~m + ~p*~q + (2~p - 1)*(~n - ~q)) - (1 + ~m + ~p*~q + (~p - 1)*(~n - ~q))*((~b)^2)) - ~a*~b*(1 + ~m + ~q + ~p*~q - ~n), ~x), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(1 + ~m))*((1 + ~m + ~p*~q)^-1)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p) - ~p*(~n - ~q)*((1 + ~m + ~p*~q)^-1)*integrate((~b + 2~c*((~x)^(~n - ~q)))*((~x)^(~m + ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(~p - 1)), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(1 + ~m))*((1 + ~m + ~p*(2~n - ~q))^-1)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p) + ~p*(~n - ~q)*((1 + ~m + ~p*(2~n - ~q))^-1)*integrate(((~x)^(~m + ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(~p - 1))*(2~a + ~b*((~x)^(~n - ~q))), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule (2~a*~c - ((~b)^2)*(2 + ~p))*(((~a)^-1)*((1 + ~p)^-1)*(((~b)^2 - 4~a*~c)^-1))*integrate(((~x)^(~m - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p)), ~x) - ((~b)^2 + ~b*~c*((~x)^(~n - ~q)) - 2~a*~c)*((~x)^(1 + ~m - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(((~a)^-1)*((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1)) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule (((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1))*integrate(((~x)^(~m + ~q - 2~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(2~a*(1 + ~m + 2~q + ~p*~q - 2~n) + ~b*(1 + ~m + ~p*~q + (~n - ~q)*(1 + 2~p))*((~x)^(~n - ~q))), ~x) - ((~x)^(1 + ~m + ~q - 2~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(2~a + ~b*((~x)^(~n - ~q)))*(((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1)) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule (((~a)^-1)*((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1))*integrate(((1 + ~m + ~p*~q + (1 + ~p)*(~n - ~q))*((~b)^2) + ~b*~c*(1 + ~m + ~p*~q + (~n - ~q)*(3 + 2~p))*((~x)^(~n - ~q)) - 2~a*~c*(1 + ~m + ~p*~q + (1 + ~p)*(2~n - 2~q)))*((~x)^(~m - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p)), ~x) - ((~b)^2 + ~b*~c*((~x)^(~n - ~q)) - 2~a*~c)*((~x)^(1 + ~m - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(((~a)^-1)*((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1)) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule (~b + 2~c*((~x)^(~n - ~q)))*((~x)^(1 + ~m - ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1)) - (((1 + ~p)^-1)*((~n - ~q)^-1)*(((~b)^2 - 4~a*~c)^-1))*integrate(((~x)^(~m - ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(~b*(1 + ~m + ~q + ~p*~q - ~n) + 2~c*(1 + ~m + ~p*~q + (1 + ~p)*(2~n - 2~q))*((~x)^(~n - ~q))), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(1 + ~m + ~q - 2~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*((1//2)*((~c)^-1)*((1 + ~p)^-1)*((~n - ~q)^-1)) - ~b*((1//2)*((~c)^-1))*integrate(((~x)^(~m + ~q - ~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule -((~x)^(1 + ~m - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*((1//2)*((~a)^-1)*((1 + ~p)^-1)*((~n - ~q)^-1)) - ~b*((1//2)*((~a)^-1))*integrate(((~x)^(~m + ~n - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(1 + ~m + ~q - 2~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(((~c)^-1)*((1 + ~m + ~p*~q + ~p*(2~n - 2~q))^-1)) - (((~c)^-1)*((1 + ~m + ~p*~q + ~p*(2~n - 2~q))^-1))*integrate(((~x)^(~m + 2~q - 2~n))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p)*(~a*(1 + ~m + 2~q + ~p*~q - 2~n) + ~b*(1 + ~m + ~p*~q + (~p - 1)*(~n - ~q))*((~x)^(~n - ~q))), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~x)^(1 + ~m - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^(1 + ~p))*(((~a)^-1)*((1 + ~m + ~p*~q)^-1)) - (((~a)^-1)*((1 + ~m + ~p*~q)^-1))*integrate(((~x)^(~m + ~n - ~q))*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p)*(~b*(1 + ~m + ~p*~q + (1 + ~p)*(~n - ~q)) + ~c*(1 + ~m + ~p*~q + (1 + ~p)*(2~n - 2~q))*((~x)^(~n - ~q))), ~x) => integrate(((~x)^~m)*((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^~r))^~p), ~x)

@rule ((~a*((~x)^~q) + ~b*((~x)^~n) + ~c*((~x)^(2~n - ~q)))^~p)*(((~x)^(-~p*~q))*((~a + ~b*((~x)^(~n - ~q)) + ~c*((~x)^(2~n - 2~q)))^(-~p)))*integrate(((~x)^(~m + ~p*~q))*((~a + ~b*((~x)^(~n - ~q)) + ~c*((~x)^(2~n - 2~q)))^~p), ~x) => integrate(((~u)^~m)*((~a*((~u)^~q) + ~b*((~u)^~n) + ~c*((~u)^~r))^~p), ~x)

