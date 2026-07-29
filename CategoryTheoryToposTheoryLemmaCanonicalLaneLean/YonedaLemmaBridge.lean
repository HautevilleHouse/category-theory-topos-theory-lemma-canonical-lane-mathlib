import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure YonedaLemmaPackage (C : ToposSpace) where
  presheafCategory : Prop
  yonedaEmbedding : Prop
  naturalBijection : Prop
  fullyFaithful : Prop

structure YonedaLemmaEvidence (C : ToposSpace) (Y : YonedaLemmaPackage C) where
  presheafCategoryClosed : Y.presheafCategory
  yonedaEmbeddingClosed : Y.yonedaEmbedding
  naturalBijectionClosed : Y.naturalBijection
  fullyFaithfulClosed : Y.fullyFaithful

def YonedaLemmaClosed (C : ToposSpace) (Y : YonedaLemmaPackage C) : Prop :=
  Y.presheafCategory ∧ Y.yonedaEmbedding ∧ Y.naturalBijection ∧ Y.fullyFaithful

theorem yoneda_lemma_closed_from_evidence (C : ToposSpace) (Y : YonedaLemmaPackage C)
    (E : YonedaLemmaEvidence C Y) : YonedaLemmaClosed C Y := by
  exact And.intro E.presheafCategoryClosed
    (And.intro E.yonedaEmbeddingClosed
      (And.intro E.naturalBijectionClosed E.fullyFaithfulClosed))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse