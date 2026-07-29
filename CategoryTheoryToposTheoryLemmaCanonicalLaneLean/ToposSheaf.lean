import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.YonedaLemma
import Mathlib.CategoryTheory.Sites

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure ToposSheafPackage (Y : YonedaEmbeddingPackage) where
  site : CategoryTheory.Site Y.category
  sheafCondition : Prop
  sheafification : Prop
  sheafificationClosed : sheafification

structure ToposSheafEvidence {Y : YonedaEmbeddingPackage} (T : ToposSheafPackage Y) where
  sheafConditionClosed : T.sheafCondition
  sheafificationClosed : T.sheafification

def ToposSheafClosed {Y : YonedaEmbeddingPackage} (T : ToposSheafPackage Y) : Prop :=
  T.sheafCondition ∧ T.sheafification

theorem topos_sheaf_closed_from_evidence {Y : YonedaEmbeddingPackage}
    (T : ToposSheafPackage Y) (E : ToposSheafEvidence T) : ToposSheafClosed T := by
  exact And.intro E.sheafConditionClosed E.sheafificationClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse