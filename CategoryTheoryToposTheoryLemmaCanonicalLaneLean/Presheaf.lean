import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure PresheafPackage where
  category : Type u
  targetCategory : Type v
  presheafType : Type w
  functoriality : Prop
  naturalTransformation : Prop
  limitPreserving : Prop

structure PresheafEvidence (P : PresheafPackage) where
  functorialityClosed : P.functoriality
  naturalTransformationClosed : P.naturalTransformation
  limitPreservingClosed : P.limitPreserving

def PresheafClosed (P : PresheafPackage) : Prop :=
  P.functoriality ∧ P.naturalTransformation ∧ P.limitPreserving

theorem presheaf_closed_from_evidence (P : PresheafPackage) (E : PresheafEvidence P) :
    PresheafClosed P := by
  exact And.intro E.functorialityClosed (And.intro E.naturalTransformationClosed E.limitPreservingClosed)

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse