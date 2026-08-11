import Mathlib

theorem zcnruwfx
    (n : ℕ) (hn : 1 ≤ n) (A : Matrix (Fin n) (Fin n) ℝ)
    (hA : Matrix.mulVec (((fun i j => |A i j|) : Matrix (Fin n) (Fin n) ℝ)) (fun _ => (1 : ℝ)) = fun _ => (n : ℝ)) :
    ∃ x : Fin n → ℝ, x ≠ 0 ∧ ∀ i : Fin n, |(A.mulVec x) i| ≥ |x i| := by
  sorry
