module NF {A : Set} where

open import Relation.Binary.PropositionalEquality

record Sing (a : A) : Set where
  field
    unpack : A
    eq : unpack ≡ a

{-# INLINE Sing.unpack #-}

record NF (v : A) : Set where
  field !! : Sing v

{-# INLINE NF.!! #-}

open NF {{...}}

open import Function.Reasoning

nf : (v : A){{nfv : NF v}} -> A
nf v = Sing.unpack (!! ∶ Sing v)

{-# INLINE nf #-}

nf≡ : {v : A}{{nfv : NF v}} -> nf v ≡ v
nf≡ = Sing.eq !!