import Mathlib

theorem hjrcvqnd (n : ℕ) (hn : 0 < n) :
    let step : (Fin n → FreeGroup (Fin n)) → (Fin n → FreeGroup (Fin n)) → Prop :=
      fun a b ↦
        (∃ i, b = Function.update a i (a i)⁻¹) ∨
        (∃ i j, i ≠ j ∧
          (b = Function.update a i (a i * a j) ∨
           b = Function.update a i (a j * a i))) ∨
        (∃ i g, b = Function.update a i (g * a i * g⁻¹)) ∨
        (∃ σ : Equiv.Perm (Fin n), b = a ∘ σ)
    ∀ y : Fin n → FreeGroup (Fin n),
      Subgroup.closure
          {x : FreeGroup (Fin n) | ∃ i g, x = g * y i * g⁻¹} = ⊤ →
        Relation.ReflTransGen step (fun i ↦ FreeGroup.of i) y := by
  sorry
