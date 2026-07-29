import CategoryTheoryToposTheoryLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ToposAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ToposWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse