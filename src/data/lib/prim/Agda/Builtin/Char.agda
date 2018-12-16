{-# OPTIONS --without-K #-}

module Agda.Builtin.Char where

open import Agda.Builtin.Nat
open import Agda.Builtin.Bool
open import Agda.Builtin.Equality

{-# BUILTIN CHAR Char #-}

primitive
  primIsLower primIsDigit primIsAlpha primIsSpace primIsAscii
    primIsLatin1 primIsPrint primIsHexDigit : Char → Bool
  primToUpper primToLower : Char → Char
  primCharToNat : Char → Nat
  primNatToChar : Nat → Char
  primCharEquality : Char → Char → Bool
  primCharToNatInjective : ∀ a b → primCharToNat a ≡ primCharToNat b → a ≡ b
