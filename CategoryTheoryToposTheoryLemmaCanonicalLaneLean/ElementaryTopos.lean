import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.YonedaLemma
import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.SubobjectClassifier

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure ElementaryToposPackage where
  finiteLimits : Exists (fun (L : Type) => HasLimitsOfShape (FiniteCategory) L)
  cartesianClosed : Exists (fun (H : Type) => CartesianClosed H)
  subobjectClassifier : SubobjectClassifierPackage
  yoneda : YonedaLemmaPackage

def ElementaryToposClosed (E : ElementaryToposPackage) : Prop :=
  E.finiteLimits ∧ E.cartesianClosed ∧ SubobjectClassifierClosed E.subobjectClassifier ∧ YonedaLemmaClosed E.yoneda

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse