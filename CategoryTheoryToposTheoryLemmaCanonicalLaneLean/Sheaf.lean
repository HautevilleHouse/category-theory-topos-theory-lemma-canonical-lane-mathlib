import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure SheafPackage where
  site : GrothendieckToposPackage
  presheaf : PresheafPackage
  coveringSieves : Type u
  sheafCondition : Prop
  gluingConsistency : Prop
  locality : Prop

structure SheafEvidence (S : SheafPackage) where
  sheafConditionClosed : S.sheafCondition
  gluingConsistencyClosed : S.gluingConsistency
  localityClosed : S.locality

def SheafClosed (S : SheafPackage) : Prop :=
  S.sheafCondition ∧ S.gluingConsistency ∧ S.locality

theorem sheaf_closed_from_evidence (S : SheafPackage) (E : SheafEvidence S) :
    SheafClosed S := by
  exact And.intro E.sheafConditionClosed (And.intro E.gluingConsistencyClosed E.localityClosed)

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse