import Mathlib

theorem test1 (a b : ℤ) : (a + b) ^ 2 = a ^ 2 + 2 * a * b + b ^ 2 := by
  ring

theorem test2 (x y : ℝ) (h1 : x < y) (h2 : 0 < x) : x^2 < y^2 := by
  have hy : 0 < y := lt_trans h2 h1
  calc
    x^2 = x * x := by ring
    _ < y * x := by exact mul_lt_mul_of_pos_right h1 h2
    _ < y * y := by exact mul_lt_mul_of_pos_left h1 hy
    _ = y^2 := by ring


theorem test4 (x y : ℝ) (h1 : x < y) (h2 : 0 < x) : x^2 > y^2 := by
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
  unfold problem_spec fake_implementation_13_2 fake_implementation_13_2_expected
  use 7
  constructor
  · rfl
  · constructor
    · norm_num
    · constructor
      · norm_num
      · constructor
        · norm_num
        · intro d' h0 h7
          exact h7
