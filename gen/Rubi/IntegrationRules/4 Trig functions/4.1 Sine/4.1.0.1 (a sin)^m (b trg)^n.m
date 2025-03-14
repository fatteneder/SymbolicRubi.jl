(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  Int[DeactivateTrig[u,x],x] /;
SimplifyFlag && FunctionOfTrigOfLinearQ[u,x],

Int[u_,x_Symbol] :=
  Int[DeactivateTrig[u,x],x] /;
FunctionOfTrigOfLinearQ[u,x]]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_.*(b_.*cos[e_.+f_.*x_])^n_.,x_Symbol] :=
  (a*Sin[e+f*x])^(m+1)*(b*Cos[e+f*x])^(n+1)/(a*b*f*(m+1)) /;
FreeQ[{a,b,e,f,m,n},x] && EqQ[m+n+2,0] && NeQ[m,-1]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_.*cos[e_.+f_.*x_]^n_.,x_Symbol] :=
  1/(a*f)*Subst[Int[x^m*(1-x^2/a^2)^((n-1)/2),x],x,a*Sin[e+f*x]] /;
FreeQ[{a,e,f,m},x] && IntegerQ[(n-1)/2] && Not[IntegerQ[(m-1)/2] && LtQ[0,m,n]]


(* ::Code:: *)
Int[(a_.*cos[e_.+f_.*x_])^m_.*sin[e_.+f_.*x_]^n_.,x_Symbol] :=
  -1/(a*f)*Subst[Int[x^m*(1-x^2/a^2)^((n-1)/2),x],x,a*Cos[e+f*x]] /;
FreeQ[{a,e,f,m},x] && IntegerQ[(n-1)/2] && Not[IntegerQ[(m-1)/2] && GtQ[m,0] && LeQ[m,n]]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  -a*(a*Sin[e+f*x])^(m-1)*(b*Cos[e+f*x])^(n+1)/(b*f*(n+1)) + 
  a^2*(m-1)/(b^2*(n+1))*Int[(a*Sin[e+f*x])^(m-2)*(b*Cos[e+f*x])^(n+2),x] /;
FreeQ[{a,b,e,f},x] && GtQ[m,1] && LtQ[n,-1] && (IntegersQ[2*m,2*n] || EqQ[m+n,0])


(* ::Code:: *)
Int[(a_.*cos[e_.+f_.*x_])^m_*(b_.*sin[e_.+f_.*x_])^n_,x_Symbol] :=
  a*(a*Cos[e+f*x])^(m-1)*(b*Sin[e+f*x])^(n+1)/(b*f*(n+1)) + 
  a^2*(m-1)/(b^2*(n+1))*Int[(a*Cos[e+f*x])^(m-2)*(b*Sin[e+f*x])^(n+2),x] /;
FreeQ[{a,b,e,f},x] && GtQ[m,1] && LtQ[n,-1] && (IntegersQ[2*m,2*n] || EqQ[m+n,0])


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  -a*(b*Cos[e+f*x])^(n+1)*(a*Sin[e+f*x])^(m-1)/(b*f*(m+n)) + 
  a^2*(m-1)/(m+n)*Int[(b*Cos[e+f*x])^n*(a*Sin[e+f*x])^(m-2),x] /;
FreeQ[{a,b,e,f,n},x] && GtQ[m,1] && NeQ[m+n,0] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*cos[e_.+f_.*x_])^m_*(b_.*sin[e_.+f_.*x_])^n_,x_Symbol] :=
  a*(b*Sin[e+f*x])^(n+1)*(a*Cos[e+f*x])^(m-1)/(b*f*(m+n)) + 
  a^2*(m-1)/(m+n)*Int[(b*Sin[e+f*x])^n*(a*Cos[e+f*x])^(m-2),x] /;
FreeQ[{a,b,e,f,n},x] && GtQ[m,1] && NeQ[m+n,0] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  (b*Cos[e+f*x])^(n+1)*(a*Sin[e+f*x])^(m+1)/(a*b*f*(m+1)) + 
  (m+n+2)/(a^2*(m+1))*Int[(b*Cos[e+f*x])^n*(a*Sin[e+f*x])^(m+2),x] /;
FreeQ[{a,b,e,f,n},x] && LtQ[m,-1] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*cos[e_.+f_.*x_])^m_*(b_.*sin[e_.+f_.*x_])^n_,x_Symbol] :=
  -(b*Sin[e+f*x])^(n+1)*(a*Cos[e+f*x])^(m+1)/(a*b*f*(m+1)) + 
  (m+n+2)/(a^2*(m+1))*Int[(b*Sin[e+f*x])^n*(a*Cos[e+f*x])^(m+2),x] /;
FreeQ[{a,b,e,f,n},x] && LtQ[m,-1] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[Sqrt[a_.*sin[e_.+f_.*x_]]*Sqrt[b_.*cos[e_.+f_.*x_]],x_Symbol] :=
  Sqrt[a*Sin[e+f*x]]*Sqrt[b*Cos[e+f*x]]/Sqrt[Sin[2*e+2*f*x]]*Int[Sqrt[Sin[2*e+2*f*x]],x] /;
FreeQ[{a,b,e,f},x]


(* ::Code:: *)
Int[1/(Sqrt[a_.*sin[e_.+f_.*x_]]*Sqrt[b_.*cos[e_.+f_.*x_]]),x_Symbol] :=
  Sqrt[Sin[2*e+2*f*x]]/(Sqrt[a*Sin[e+f*x]]*Sqrt[b*Cos[e+f*x]])*Int[1/Sqrt[Sin[2*e+2*f*x]],x] /;
FreeQ[{a,b,e,f},x]


(* ::Code:: *)
(* Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  (a*Sin[e+f*x])^m*(b*Cos[e+f*x])^n/(a*Tan[e+f*x])^m*Int[(a*Tan[e+f*x])^m,x] /;
FreeQ[{a,b,e,f,m,n},x] && EqQ[m+n,0] *)


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  With[{k=Denominator[m]},
  k*a*b/f*Subst[Int[x^(k*(m+1)-1)/(a^2+b^2*x^(2*k)),x],x,(a*Sin[e+f*x])^(1/k)/(b*Cos[e+f*x])^(1/k)]] /;
FreeQ[{a,b,e,f},x] && EqQ[m+n,0] && GtQ[m,0] && LtQ[m,1]


(* ::Code:: *)
Int[(a_.*cos[e_.+f_.*x_])^m_*(b_.*sin[e_.+f_.*x_])^n_,x_Symbol] :=
  With[{k=Denominator[m]},
  -k*a*b/f*Subst[Int[x^(k*(m+1)-1)/(a^2+b^2*x^(2*k)),x],x,(a*Cos[e+f*x])^(1/k)/(b*Sin[e+f*x])^(1/k)]] /;
FreeQ[{a,b,e,f},x] && EqQ[m+n,0] && GtQ[m,0] && LtQ[m,1]


(* ::Code:: *)
(* Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  b^(2*IntPart[(n-1)/2]+1)*(b*Cos[e+f*x])^(2*FracPart[(n-1)/2])/(a*f*(Cos[e+f*x]^2)^FracPart[(n-1)/2])*
    Subst[Int[x^m*(1-x^2/a^2)^((n-1)/2),x],x,a*Sin[e+f*x]] /;
FreeQ[{a,b,e,f,m,n},x] && (RationalQ[n] || Not[RationalQ[m]] && (EqQ[b,1] || NeQ[a,1])) *)


(* ::Code:: *)
(* Int[(a_.*cos[e_.+f_.*x_])^m_*(b_.*sin[e_.+f_.*x_])^n_,x_Symbol] :=
  -b^(2*IntPart[(n-1)/2]+1)*(b*Sin[e+f*x])^(2*FracPart[(n-1)/2])/(a*f*(Sin[e+f*x]^2)^FracPart[(n-1)/2])*
    Subst[Int[x^m*(1-x^2/a^2)^((n-1)/2),x],x,a*Cos[e+f*x]] /;
FreeQ[{a,b,e,f,m,n},x] *)


(* ::Code:: *)
Int[(a_.*cos[e_.+f_.*x_])^m_*(b_.*sin[e_.+f_.*x_])^n_,x_Symbol] :=
  -b^(2*IntPart[(n-1)/2]+1)*(b*Sin[e+f*x])^(2*FracPart[(n-1)/2])*(a*Cos[e+f*x])^(m+1)/(a*f*(m+1)*(Sin[e+f*x]^2)^FracPart[(n-1)/2])*
    Hypergeometric2F1[(1+m)/2,(1-n)/2,(3+m)/2,Cos[e+f*x]^2] /;
FreeQ[{a,b,e,f,m,n},x] && SimplerQ[n,m]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*cos[e_.+f_.*x_])^n_,x_Symbol] :=
  b^(2*IntPart[(n-1)/2]+1)*(b*Cos[e+f*x])^(2*FracPart[(n-1)/2])*(a*Sin[e+f*x])^(m+1)/(a*f*(m+1)*(Cos[e+f*x]^2)^FracPart[(n-1)/2])*
    Hypergeometric2F1[(1+m)/2,(1-n)/2,(3+m)/2,Sin[e+f*x]^2] /;
FreeQ[{a,b,e,f,m,n},x]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_.*(b_.*sec[e_.+f_.*x_])^n_.,x_Symbol] :=
  b*(a*Sin[e+f*x])^(m+1)*(b*Sec[e+f*x])^(n-1)/(a*f*(m+1)) /;
FreeQ[{a,b,e,f,m,n},x] && EqQ[m-n+2,0] && NeQ[m,-1]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  a*b*(a*Sin[e+f*x])^(m-1)*(b*Sec[e+f*x])^(n-1)/(f*(n-1)) - 
  a^2*b^2*(m-1)/(n-1)*Int[(a*Sin[e+f*x])^(m-2)*(b*Sec[e+f*x])^(n-2),x] /;
FreeQ[{a,b,e,f},x] && GtQ[n,1] && GtQ[m,1] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  (a*Sin[e+f*x])^(m+1)*(b*Sec[e+f*x])^(n+1)/(a*b*f*(m-n)) - 
  (n+1)/(b^2*(m-n))*Int[(a*Sin[e+f*x])^m*(b*Sec[e+f*x])^(n+2),x] /;
FreeQ[{a,b,e,f,m},x] && GtQ[n,1] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  (a*Sin[e+f*x])^(m+1)*(b*Sec[e+f*x])^(n+1)/(a*b*f*(m+1)) - 
  (n+1)/(a^2*b^2*(m+1))*Int[(a*Sin[e+f*x])^(m+2)*(b*Sec[e+f*x])^(n+2),x] /;
FreeQ[{a,b,e,f},x] && LtQ[n,-1] && LtQ[m,-1] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  (a*Sin[e+f*x])^(m+1)*(b*Sec[e+f*x])^(n+1)/(a*b*f*(m-n)) - 
  (n+1)/(b^2*(m-n))*Int[(a*Sin[e+f*x])^m*(b*Sec[e+f*x])^(n+2),x] /;
FreeQ[{a,b,e,f,m},x] && LtQ[n,-1] && NeQ[m-n,0] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  -a*b*(a*Sin[e+f*x])^(m-1)*(b*Sec[e+f*x])^(n-1)/(f*(m-n)) + 
  a^2*(m-1)/(m-n)*Int[(a*Sin[e+f*x])^(m-2)*(b*Sec[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,n},x] && GtQ[m,1] && NeQ[m-n,0] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  b*(a*Sin[e+f*x])^(m+1)*(b*Sec[e+f*x])^(n-1)/(a*f*(m+1)) + 
  (m-n+2)/(a^2*(m+1))*Int[(a*Sin[e+f*x])^(m+2)*(b*Sec[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,n},x] && LtQ[m,-1] && IntegersQ[2*m,2*n]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  (b*Cos[e+f*x])^n*(b*Sec[e+f*x])^n*Int[(a*Sin[e+f*x])^m/(b*Cos[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,m,n},x] && IntegerQ[m-1/2] && IntegerQ[n-1/2]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  1/b^2*(b*Cos[e+f*x])^(n+1)*(b*Sec[e+f*x])^(n+1)*Int[(a*Sin[e+f*x])^m/(b*Cos[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && LtQ[n,1]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_*(b_.*sec[e_.+f_.*x_])^n_,x_Symbol] :=
  b^2*(b*Cos[e+f*x])^(n-1)*(b*Sec[e+f*x])^(n-1)*Int[(a*Sin[e+f*x])^m/(b*Cos[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(a_.*sin[e_.+f_.*x_])^m_.*(b_.*csc[e_.+f_.*x_])^n_,x_Symbol] :=
  (a*b)^IntPart[n]*(a*Sin[e+f*x])^FracPart[n]*(b*Csc[e+f*x])^FracPart[n]*Int[(a*Sin[e+f*x])^(m-n),x] /;
FreeQ[{a,b,e,f,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]]



