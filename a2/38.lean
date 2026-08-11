import Mathlib

theorem xrvqjken
    (R G H : Type*) [CommRing R] [Group G] [Fintype G] [Group H]
    (h2 : ¬ IsUnit (2 : R))
    (hG : Fintype.card G ∣ 64)
    (halg : MonoidAlgebra R G ≃ₐ[R] MonoidAlgebra R H) :
    Nonempty (G ≃* H) := by
  sorry
