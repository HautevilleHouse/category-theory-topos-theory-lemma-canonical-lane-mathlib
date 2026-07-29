import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type v → Type u
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentity : Prop
  unitNaturalClosed : unitNatural
  counitNaturalClosed : counitNatural
  triangleIdentityClosed : triangleIdentity

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentity

theorem adjoint_functor_closed (A : AdjointFunctorPackage) : AdjointFunctorClosed A :=
  And.intro A.unitNaturalClosed (And.intro A.counitNaturalClosed A.triangleIdentityClosed)

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse
