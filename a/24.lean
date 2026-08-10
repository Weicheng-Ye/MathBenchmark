theorem cwlqazmr :
    ∀ (G : Type*) (_ : Group G),
      (∀ g : G, g ^ 5 = 1) →
        ∀ H : Subgroup G, Group.FG H → Finite H := by
  sorry
