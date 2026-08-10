theorem qzmyxvra
    (a : ℕ → ℂ) (f : ℂ → ℂ)
    (hf : ∀ z : ℂ, HasSum (fun k ↦ a k * z ^ k) (f z))
    (hentire : Differentiable ℂ f)
    (hnonvanishing : ∀ z : ℂ, f z ≠ 0) :
    ∀ ε : ℝ, 0 < ε →
      ∃ (z : ℂ) (n : ℕ),
        (∑ k in Finset.range (n + 1), a k * z ^ k) = 0 ∧ ‖f z‖ < ε := by
  sorry
