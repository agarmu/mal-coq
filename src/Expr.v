Require Import Coq.Strings.String.

Inductive atom : Type :=
    | atom_bool (b:bool)
    | atom_nat (n:nat)
    | atom_str (s:string)
.

Inductive expr : Type :=
    | atom_expr (a:atom)
.


Definition eval (x:expr) : atom :=
    match x with
    | atom_expr b => b
    end.
