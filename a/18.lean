theorem fqnzjwec
    (n : ℕ) (hn : n = 7 ∨ n = 8) :
    ¬ ∃ x y : AlgebraicClosure ℚ,
      x * y ≠ 0 ∧
      x ^ n + y ^ n = 1 ∧
      Module.finrank ℚ (IntermediateField.adjoin ℚ ({x, y} : Set (AlgebraicClosure ℚ))) = 4 ∧
      Nonempty
        (((IntermediateField.normalClosure ℚ
            (↥(IntermediateField.adjoin ℚ ({x, y} : Set (AlgebraicClosure ℚ))))
            (AlgebraicClosure ℚ)) ≃ₐ[ℚ]
          (IntermediateField.normalClosure ℚ
            (↥(IntermediateField.adjoin ℚ ({x, y} : Set (AlgebraicClosure ℚ))))
            (AlgebraicClosure ℚ))) ≃*
          ↥(alternatingGroup (Fin 4))) := by
  sorry
