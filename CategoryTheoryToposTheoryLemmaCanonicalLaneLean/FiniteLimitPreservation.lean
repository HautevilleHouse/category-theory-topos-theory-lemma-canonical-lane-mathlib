import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure FiniteLimitPackage {A : AdmittedCategory} (B : AdmittedCategory) where
  functor : A.carrier → B.carrier
  preservesTerminal : Prop
  preservesPullbacks : Prop
  terminalPreserved : preservesTerminal
  pullbacksPreserved : preservesPullbacks

structure FiniteLimitEvidence {A : AdmittedCategory} {B : AdmittedCategory} (P : FiniteLimitPackage B) where
  terminalPreservedClosed : P.preservesTerminal
  pullbacksPreservedClosed : P.preservesPullbacks

def FiniteLimitClosed {A : AdmittedCategory} {B : AdmittedCategory} (P : FiniteLimitPackage B) : Prop :=
  P.preservesTerminal ∧ P.preservesPullbacks

theorem finite_limit_closed_from_evidence {A : AdmittedCategory} {B : AdmittedCategory} (P : FiniteLimitPackage B) (E : FiniteLimitEvidence P) :
  FiniteLimitClosed P := by
  exact And.intro E.terminalPreservedClosed E.pullbacksPreservedClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse