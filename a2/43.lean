import Mathlib

theorem vpxlqzra :
    ∀ (L : Type*) (_ : Fintype L) (_ : Nonempty L) (_ : Lattice L),
      ∃ (A : Type) (_ : Fintype A) (_ : Nonempty A) (ι : Type) (arity : ι → ℕ)
        (op : ∀ i : ι, (Fin (arity i) → A) → A),
        Nonempty
          (L ≃o
            {r : Setoid A //
              ∀ (i : ι) (x y : Fin (arity i) → A),
                (∀ j, r.r (x j) (y j)) → r.r (op i x) (op i y)}) := by
  sorry
