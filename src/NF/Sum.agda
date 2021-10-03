module NF.Sum where

open import NF
open import Data.Sum
open import Relation.Binary.PropositionalEquality

instance
  nfInj₁ : {A B : Set}{a : A}{{nfa : NF a}} -> NF {A ⊎ B} (inj₁ a)
  Sing.unpack (NF.!! (nfInj₁ {a = a})) = inj₁ (nf a)
  Sing.eq (NF.!! (nfInj₁ {{nfa}})) rewrite nf≡ {{nfa}} = refl

  {-# INLINE nfInj₁ #-}

  nfInj₂ : {A B : Set}{b : B}{{nfb : NF b}} -> NF {A ⊎ B} (inj₂ b)
  Sing.unpack (NF.!! (nfInj₂ {b = b})) = inj₂ (nf b)
  Sing.eq (NF.!! (nfInj₂ {{nfb}})) rewrite nf≡ {{nfb}} = refl

  {-# INLINE nfInj₂ #-}