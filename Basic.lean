import Mathlib

theorem test1 (a b : ℤ) : (a + b) ^ 2 = a ^ 2 + 2 * a * b + b ^ 2 := by
  sorry

theorem test2 (x y : ℝ) (h1 : x < y) (h2 : 0 < x) : x^2 < y^2 := by
  sorry

def problem_spec
-- function signature
(implementation: Int → Int → Int)
-- inputs
(a b: Int) : Prop :=
let spec (result : Int) :=
  (result ∣ a) ∧
  (result ∣ b) ∧
  (result ≥ 0) ∧
  (∀ (d' : Int), (d' ∣ a) → (d' ∣ b) → d' ∣ result)
∃ result, implementation a b = result ∧ spec result

def fake_implementation_13_2_expected := 7

def fake_implementation_13_2 (a b : Int) : Int :=
  fake_implementation_13_2_expected

theorem test3 : problem_spec fake_implementation_13_2 (0) (7) := by
  sorry
