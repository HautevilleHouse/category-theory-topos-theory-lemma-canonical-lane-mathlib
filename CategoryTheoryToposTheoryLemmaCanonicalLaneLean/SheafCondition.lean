import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure GrothendieckTopology (C : AdmittedCategory) where
  covering : C.carrier → Set (Set (C.morphism ?_ ?_))
  baseChange : Prop
  localCharacter : Prop
  baseChangeHolds : baseChange
  localCharacterHolds : localCharacter

structure SheafPackage (C : AdmittedCategory) (J : GrothendieckTopology C) where
  presheaf : C.carrier → Type u
  sheafCondition : Prop
  conditionSatisfied : sheafCondition

structure SheafEvidence (C : AdmittedCategory) (J : GrothendieckTopology C) (F : SheafPackage C J) where
  sheafConditionClosed : F.sheafCondition

def SheafClosed (C : AdmittedCategory) (J : GrothendieckTopology C) (F : SheafPackage C J) : Prop :=
  F.sheafCondition

theorem sheaf_closed_from_evidence (C : AdmittedCategory) (J : GrothendieckTopology C) (F : SheafPackage C J) (E : SheafEvidence C J F) :
  SheafClosed C J F := by
  exact E.sheafConditionClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse