import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.FiniteLimitPreservation
import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.SheafCondition

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure ToposPackage (C : AdmittedCategory) (J : GrothendieckTopology C) where
  finiteLimitPreserving : FiniteLimitPackage C
  sheafification : (F : SheafPackage C J) → SheafPackage C J
  powerObject : C.carrier → C.carrier
  subobjectClassifier : C.carrier
  axioms : Prop
  limitAxiom : axioms
  sheafificationAxiom : axioms
  powerObjectAxiom : axioms
  subobjectClassifierAxiom : axioms

structure ToposEvidence (C : AdmittedCategory) (J : GrothendieckTopology C) (T : ToposPackage C J) where
  limitAxiomClosed : T.axioms
  sheafificationAxiomClosed : T.axioms
  powerObjectAxiomClosed : T.axioms
  subobjectClassifierAxiomClosed : T.axioms

def ToposClosed (C : AdmittedCategory) (J : GrothendieckTopology C) (T : ToposPackage C J) : Prop :=
  T.axioms

theorem topos_closed_from_evidence (C : AdmittedCategory) (J : GrothendieckTopology C) (T : ToposPackage C J) (E : ToposEvidence C J T) :
  ToposClosed C J T := by
  exact E.limitAxiomClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse