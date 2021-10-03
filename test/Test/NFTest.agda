module Test.NFTest where

open import Data.Nat
open import Data.List
open import Data.Product
open import Test.Factorial
open import NF
open import NF.Nat
open import NF.List
open import NF.Product

l : List (ℕ × ℕ)
l = nf ((1 , factorial 1) ∷ (1 + 1 , factorial (1 + 1)) ∷ [] ++ 
        (5 , factorial 5) ∷ [])