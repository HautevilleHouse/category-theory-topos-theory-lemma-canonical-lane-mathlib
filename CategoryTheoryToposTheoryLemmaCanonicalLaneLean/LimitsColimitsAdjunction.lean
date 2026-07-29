import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure LimitsAdjunctionPackage (C D : ToposSpace) where
  functor : Type u → Type u
  leftAdjoint : Prop
  rightAdjoint : Prop
  limitPreservation : Prop
  colimitPreservation : Prop

structure LimitsAdjunctionEvidence (C D : ToposSpace) (L : LimitsAdjunctionPackage C D) where
  functorClosed : L.functor
  leftAdjointClosed : L.leftAdjoint
  rightAdjointClosed : L.rightAdjoint
  limitPreservationClosed : L.limitPreservation
  colimitPreservationClosed : L.colimitPreservation

def LimitsAdjunctionClosed (C D : ToposSpace) (L : LimitsAdjunctionPackage C D) : Prop :=
  L.functor ∧ L.leftAdjoint ∧ L.rightAdjoint ∧ L.limitPreservation ∧ L.colimitPreservation

theorem limits_adjunction_closed_from_evidence (C D : ToposSpace) (L : LimitsAdjunctionPackage C D)
    (E : LimitsAdjunctionEvidence C D L) : LimitsAdjunctionClosed C D L := by
  exact And.intro E.functorClosed
    (And.intro E.leftAdjointClosed
      (And.intro E.rightAdjointClosed
        (And.intro E.limitPreservationClosed E.colimitPreservationClosed)))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse