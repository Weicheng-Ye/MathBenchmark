theorem zlapvknx
    (n m : ℕ) (hn : 0 < n)
    (A : Matrix (Fin n) (Fin n) ℂ) (c : Fin (m + 1) → ℂ) :
    ‖((Matrix.toEuclideanLin ≪≫ₗ LinearMap.toContinuousLinearMap)
        (∑ k, c k • A ^ (k : ℕ)))‖ ≤
      2 * sSup
        {r : ℝ | ∃ z : ℂ,
          (∃ x : EuclideanSpace ℂ (Fin n),
            ‖x‖ = 1 ∧
              z = inner ℂ x
                (((Matrix.toEuclideanLin ≪≫ₗ LinearMap.toContinuousLinearMap) A) x)) ∧
          r = ‖∑ k, c k * z ^ (k : ℕ)‖} := by
  sorry
