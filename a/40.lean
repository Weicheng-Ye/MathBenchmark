theorem yrvknqza :
    ∀ ε : ℝ, ε > 0 →
      ∀ᶠ n : ℕ in Filter.atTop,
        abs
          (((Nat.card
              {p : Equiv.Perm (Fin n) × Equiv.Perm (Fin n) //
                orderOf p.1 = 2 ∧
                  Subgroup.closure ({p.1, p.2} : Set (Equiv.Perm (Fin n))) = ⊤} : ℝ) /
            ((Nat.card {σ : Equiv.Perm (Fin n) // orderOf σ = 2} : ℝ) *
              (Nat.card (Equiv.Perm (Fin n)) : ℝ))) -
            (3 / 4 : ℝ)) < ε := by
  sorry
