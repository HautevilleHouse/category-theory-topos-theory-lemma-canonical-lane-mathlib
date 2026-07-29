import CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure SubobjectClassifierPackage (A : AdmissibleClass) where
  toposObject : Type u
  subobjectClassifierObj : Type v
  trueMorphism : Prop
  characteristicMorphism : Prop
  classificationBijection : Prop

structure SubobjectClassifierEvidence {A : AdmissibleClass}
    (SC : SubobjectClassifierPackage A) where
  trueMorphismClosed : SC.trueMorphism
  characteristicMorphismClosed : SC.characteristicMorphism
  classificationBijectionClosed : SC.classificationBijection

def SubobjectClassifierClosed {A : AdmissibleClass}
    (SC : SubobjectClassifierPackage A) : Prop :=
  SC.trueMorphism ∧ SC.characteristicMorphism ∧ SC.classificationBijection

theorem subobject_classifier_closed_from_evidence {A : AdmissibleClass}
    (SC : SubobjectClassifierPackage A) (E : SubobjectClassifierEvidence SC) :
    SubobjectClassifierClosed SC := by
  exact And.intro E.trueMorphismClosed
    (And.intro E.characteristicMorphismClosed E.classificationBijectionClosed)

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse