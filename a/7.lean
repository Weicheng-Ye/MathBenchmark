theorem lmxuatpe :
    ∀ n : ℤ, 1 ≤ n →
      ∃ k : ℤ, n ^ 2 < k ∧ k < (n + 1) ^ 2 ∧ k.natAbs.factorization.sum (fun _ e => e) ≤ 3 := by
  sorry
