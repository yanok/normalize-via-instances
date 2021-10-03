module NF.Nat where

open import NF
open import Relation.Binary.PropositionalEquality
open import Data.Nat

instance
  nf0 : NF 0
  Sing.unpack (NF.!! nf0) = 0
  Sing.eq (NF.!! nf0) = refl

  {-# INLINE nf0 #-}

  nfSuc : {n : ℕ}{{nfn : NF n}} -> NF (suc n)
  Sing.unpack (NF.!! (nfSuc {n})) = suc (nf n)
  Sing.eq (NF.!! (nfSuc {{nfn}})) = cong suc nf≡

  {-# INLINE nfSuc #-}