import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.ToposProperties

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure SheafificationPackage where
  site : Type u
  coverage : Type v
  presheaf : Type w
  sheaf : Type x
  sheafificationFunctor : Type w → Type x
  universalProperty : Prop

structure SheafificationEvidence (S : SheafificationPackage) where
  sheafificationFunctorDefined : Prop
  universalPropertyClosed : S.universalProperty

def SheafificationClosed (S : SheafificationPackage) : Prop :=
  S.universalProperty

theorem sheafification_closed_from_evidence (S : SheafificationPackage)
    (E : SheafificationEvidence S) : SheafificationClosed S := by
  exact E.universalPropertyClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse