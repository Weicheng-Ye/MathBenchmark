import Mathlib

theorem tdlwzqjc
    (m : ℕ) (hm : 2 ≤ m) :
    Set.Finite
      {S : Finset (Σ n : ℕ+, Fin n) |
        (∀ x : ℤ, ∃! c, c ∈ S ∧ Int.ModEq (c.1 : ℤ) x ((c.2 : ℕ) : ℤ)) ∧
        (∀ c ∈ S, 3 ≤ (c.1 : ℕ)) ∧
        ∃ N : ℕ+,
          (∀ c ∈ S, c.1 ≤ N) ∧
          (S.filter (fun c => c.1 = N)).card = m ∧
          ∀ n : ℕ+, n ∈ S.image (fun c => c.1) → n ≠ N →
            (S.filter (fun c => c.1 = n)).card = 1} := by
  sorry
