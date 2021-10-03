module NF.Product where

open import NF
open import Data.Product
open import Relation.Binary.PropositionalEquality

instance
  nf, : {A : Set}{B : A -> Set}{a : A}{b : B a}{{nfa : NF a}}{{nfb : NF b}} -> NF {Σ A B} (a , b)
  Sing.unpack (NF.!! (nf, {B = B} {a = a} {b = b} {{nfa}})) = nf a , subst B (sym nf≡) (nf b)
  Sing.eq (NF.!! (nf, {{nfa}} {{nfb}})) rewrite nf≡ {{nfa}} | nf≡ {{nfb}} = refl

  {-# INLINE nf, #-}