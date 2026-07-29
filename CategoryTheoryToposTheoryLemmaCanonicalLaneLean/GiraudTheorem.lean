import CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure GiraudTheoremPackage (A : AdmissibleClass) where
  category : Type u
  grothendieckTopos : Prop
  exactnessConditions : Prop
  limitPreservingReflectIsomorphisms : Prop
  generatingSet : Prop
  characterizationComplete : Prop

structure GiraudTheoremEvidence {A : AdmissibleClass}
    (G : GiraudTheoremPackage A) where
  grothendieckToposClosed : G.grothendieckTopos
  exactnessConditionsClosed : G.exactnessConditions
  limitPreservingReflectIsomorphismsClosed : G.limitPreservingReflectIsomorphisms
  generatingSetClosed : G.generatingSet
  characterizationCompleteClosed : G.characterizationComplete

def GiraudTheoremClosed {A : AdmissibleClass} (G : GiraudTheoremPackage A) : Prop :=
  G.grothendieckTopos ∧ G.exactnessConditions ∧
  G.limitPreservingReflectIsomorphisms ∧ G.generatingSet ∧
  G.characterizationComplete

theorem giraud_theorem_closed_from_evidence {A : AdmissibleClass}
    (G : GiraudTheoremPackage A) (E : GiraudTheoremEvidence G) :
    GiraudTheoremClosed G := by
  exact And.intro E.grothendieckToposClosed
    (And.intro E.exactnessConditionsClosed
      (And.intro E.limitPreservingReflectIsomorphismsClosed
        (And.intro E.generatingSetClosed E.characterizationCompleteClosed)))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse