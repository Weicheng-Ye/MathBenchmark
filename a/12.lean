theorem gxtwkemr
    {α : Type*} [Fintype α] [Nonempty α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj]
    (hcycles :
      ∀ (s : Set α) (n : ℕ),
        4 ≤ n →
        Nonempty ((SimpleGraph.induce s G) ≃g SimpleGraph.cycleGraph n) →
        n = 4)
    (hforbidden :
      ¬ ∃ s : Set α,
        Nonempty
          ((SimpleGraph.induce s G) ≃g
            SimpleGraph.sum (⊥ : SimpleGraph Unit) (SimpleGraph.completeGraph (Fin 3)))) :
    G.chromaticNumber ≤ (2 * G.cliqueNum - 1 : ℕ∞) := by
  sorry
