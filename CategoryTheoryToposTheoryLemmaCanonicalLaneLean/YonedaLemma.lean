import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure YonedaLemmaPackage (C : Type u) [Category.{v} C] where
  functor : C ⥤ Set
  naturalTransformations : Type (max u v)
  yonedaEmbeddingFullFaithful : Prop
  yonedaLemmaBijection : Prop

structure YonedaLemmaEvidence {C : Type u} [Category.{v} C] (Y : YonedaLemmaPackage C) where
  yonedaEmbeddingFullFaithfulClosed : Y.yonedaEmbeddingFullFaithful
  yonedaLemmaBijectionClosed : Y.yonedaLemmaBijection

def YonedaLemmaClosed {C : Type u} [Category.{v} C] (Y : YonedaLemmaPackage C) : Prop :=
  Y.yonedaEmbeddingFullFaithful ∧ Y.yonedaLemmaBijection

theorem yoneda_lemma_closed_from_evidence {C : Type u} [Category.{v} C]
    (Y : YonedaLemmaPackage C) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.yonedaEmbeddingFullFaithfulClosed E.yonedaLemmaBijectionClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse