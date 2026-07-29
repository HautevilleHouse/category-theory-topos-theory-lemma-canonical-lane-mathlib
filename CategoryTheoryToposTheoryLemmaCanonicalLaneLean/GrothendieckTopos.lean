import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure GrothendieckToposPackage where
  site : Type u
  coverage : Type v
  sheaves : Type w
  siteCategory : Prop
  coveragePresheaf : Prop
  sheafCategory : Prop
  giraudAxioms : Prop

structure GrothendieckToposEvidence (T : GrothendieckToposPackage) where
  siteCategoryClosed : T.siteCategory
  coveragePresheafClosed : T.coveragePresheaf
  sheafCategoryClosed : T.sheafCategory
  giraudAxiomsClosed : T.giraudAxioms

def GrothendieckToposClosed (T : GrothendieckToposPackage) : Prop :=
  T.siteCategory ∧ T.coveragePresheaf ∧ T.sheafCategory ∧ T.giraudAxioms

theorem grothendieck_topos_closed_from_evidence (T : GrothendieckToposPackage) (E : GrothendieckToposEvidence T) :
    GrothendieckToposClosed T := by
  exact And.intro E.siteCategoryClosed (And.intro E.coveragePresheafClosed (And.intro E.sheafCategoryClosed E.giraudAxiomsClosed))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse