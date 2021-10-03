module NF.List {A : Set} where

open import NF
open import Data.List
open import Relation.Binary.PropositionalEquality

instance
  nf[] : NF {List A} []
  Sing.unpack (NF.!! nf[]) = []
  Sing.eq (NF.!! nf[]) = refl

  {-# INLINE nf[] #-}

  nf∷ : {x : A}{{nfx : NF x}}{t : List A}{{nft : NF t}} -> NF (x ∷ t)
  Sing.unpack (NF.!! (nf∷ {x} {t})) = nf x ∷ nf t
  Sing.eq (NF.!! (nf∷ {{nfx}} {{nft}})) rewrite nf≡ {{nfx}} | nf≡ {{nft}} = refl

  {-# INLINE nf∷ #-}