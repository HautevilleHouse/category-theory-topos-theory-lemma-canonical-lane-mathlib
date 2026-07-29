import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdjointFunctorTheorem

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure ToposPropertiesPackage where
  subobjectClassifier : Prop
  powerObject : Prop
  exponentials : Prop
  finiteLimits : Prop
  finiteColimits : Prop

structure ToposPropertiesEvidence (T : ToposPropertiesPackage) where
  subobjectClassifierClosed : T.subobjectClassifier
  powerObjectClosed : T.powerObject
  exponentialsClosed : T.exponentials
  finiteLimitsClosed : T.finiteLimits
  finiteColimitsClosed : T.finiteColimits

def ToposPropertiesClosed (T : ToposPropertiesPackage) : Prop :=
  T.subobjectClassifier ∧ T.powerObject ∧ T.exponentials ∧
  T.finiteLimits ∧ T.finiteColimits

theorem topos_properties_closed_from_evidence (T : ToposPropertiesPackage)
    (E : ToposPropertiesEvidence T) : ToposPropertiesClosed T := by
  exact And.intro E.subobjectClassifierClosed
    (And.intro E.powerObjectClosed
      (And.intro E.exponentialsClosed
        (And.intro E.finiteLimitsClosed E.finiteColimitsClosed)))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse