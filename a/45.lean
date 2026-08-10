theorem rzpavlqx
    (n : ℕ) (hn : 0 < n) (h4 : 4 ∣ n) :
    ∃ H : Matrix (Fin n) (Fin n) ℤ,
      (∀ i j, H i j = 1 ∨ H i j = -1) ∧
      H * Matrix.transpose H =
        (n : ℤ) • (1 : Matrix (Fin n) (Fin n) ℤ) := by
  sorry
