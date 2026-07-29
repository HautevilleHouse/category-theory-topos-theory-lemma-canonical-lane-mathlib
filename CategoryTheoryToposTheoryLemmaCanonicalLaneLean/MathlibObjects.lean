import CategoryTheoryToposTheoryLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Limits.Shapes.Terminal
import Mathlib.Topology.Sheaves.SheafCondition

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ToposSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure ToposAdmittedObject where
  topos : ToposSpace
  categoryWithFiniteLimits : Prop
  subobjectClassifier : Prop
  exponentiation : Prop
  sheafModel : Type v
  sheafTopology : TopologicalSpace sheafModel
  toposEquivalentToSheaves : Prop
  conclusion : toposEquivalentToSheaves

structure ToposEndgameState where
  object : ToposAdmittedObject

def ToposWitnessClosed (O : ToposAdmittedObject) : Prop :=
  O.toposEquivalentToSheaves

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse