import CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure AdjointFunctorTheoremPackage (A : AdmissibleClass) where
  categorySource : Type u
  categoryTarget : Type v
  limitPreservingFunctor : Prop
  colimitPreservingFunctor : Prop
  leftAdjointExists : Prop
  rightAdjointExists : Prop

structure AdjointFunctorTheoremEvidence {A : AdmissibleClass}
    (AFT : AdjointFunctorTheoremPackage A) where
  limitPreservingFunctorClosed : AFT.limitPreservingFunctor
  colimitPreservingFunctorClosed : AFT.colimitPreservingFunctor
  leftAdjointExistsClosed : AFT.leftAdjointExists
  rightAdjointExistsClosed : AFT.rightAdjointExists

def AdjointFunctorTheoremClosed {A : AdmissibleClass}
    (AFT : AdjointFunctorTheoremPackage A) : Prop :=
  AFT.limitPreservingFunctor ∧ AFT.colimitPreservingFunctor ∧
  AFT.leftAdjointExists ∧ AFT.rightAdjointExists

theorem adjoint_functor_theorem_closed_from_evidence {A : AdmissibleClass}
    (AFT : AdjointFunctorTheoremPackage A) (E : AdjointFunctorTheoremEvidence AFT) :
    AdjointFunctorTheoremClosed AFT := by
  exact And.intro E.limitPreservingFunctorClosed
    (And.intro E.colimitPreservingFunctorClosed
      (And.intro E.leftAdjointExistsClosed E.rightAdjointExistsClosed))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse