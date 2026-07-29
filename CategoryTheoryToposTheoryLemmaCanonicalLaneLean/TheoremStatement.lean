import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ToposSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ToposAdmittedObject where
  space : ToposSpace
  site : Type
  coverage : Type
  sheafCondition : Prop
  category : Prop
  topos : Prop
  conclusion : sheafCondition ∧ category ∧ topos

def ToposWitnessClosed (O : ToposAdmittedObject) : Prop :=
  O.sheafCondition ∧ O.category ∧ O.topos

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse