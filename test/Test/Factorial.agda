module Test.Factorial where

open import Data.Nat

factorial : ℕ -> ℕ
factorial zero = 1
factorial n@(suc n') = n * factorial n'
