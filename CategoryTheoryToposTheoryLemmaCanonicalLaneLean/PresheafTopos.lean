import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure PresheafToposPackage where
  baseCategory : Type u
  presheafCategory : Type v
  grothendieckTopology : Option (Type w)
  limitExistence : Prop
  colimitExistence : Prop
  subobjectClassifierExisting : Prop
  limitExistenceClosed : limitExistence
  colimitExistenceClosed : colimitExistence
  subobjectClassifierExistingClosed : subobjectClassifierExisting

def PresheafToposClosed (P : PresheafToposPackage) : Prop :=
  P.limitExistence ∧ P.colimitExistence ∧ P.subobjectClassifierExisting

theorem presheaf_topos_closed (P : PresheafToposPackage) : PresheafToposClosed P :=
  And.intro P.limitExistenceClosed (And.intro P.colimitExistenceClosed P.subobjectClassifierExistingClosed)

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse
