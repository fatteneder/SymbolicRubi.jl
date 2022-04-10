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
Int[Zeta[2,a_.+b_.*x_],x_Symbol] :=
  Int[PolyGamma[1,a+b*x],x] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Zeta[s_,a_.+b_.*x_],x_Symbol] :=
  -Zeta[s-1,a+b*x]/(b*(s-1)) /;
FreeQ[{a,b,s},x] && NeQ[s,1] && NeQ[s,2]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*Zeta[2,a_.+b_.*x_],x_Symbol] :=
  Int[(c+d*x)^m*PolyGamma[1,a+b*x],x] /;
FreeQ[{a,b,c,d},x] && RationalQ[m]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*Zeta[s_,a_.+b_.*x_],x_Symbol] :=
  -(c+d*x)^m*Zeta[s-1,a+b*x]/(b*(s-1)) +
  d*m/(b*(s-1))*Int[(c+d*x)^(m-1)*Zeta[s-1,a+b*x],x] /;
FreeQ[{a,b,c,d,s},x] && NeQ[s,1] && NeQ[s,2] && GtQ[m,0]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*Zeta[s_,a_.+b_.*x_],x_Symbol] :=
  (c+d*x)^(m+1)*Zeta[s,a+b*x]/(d*(m+1)) +
  b*s/(d*(m+1))*Int[(c+d*x)^(m+1)*Zeta[s+1,a+b*x],x] /;
FreeQ[{a,b,c,d,s},x] && NeQ[s,1] && NeQ[s,2] && LtQ[m,-1]



