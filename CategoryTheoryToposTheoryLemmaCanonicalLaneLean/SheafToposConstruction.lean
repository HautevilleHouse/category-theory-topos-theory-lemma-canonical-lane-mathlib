import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure SheafToposPackage (C : ToposSpace) where
  site : Type u
  coverage : site → Prop
  sheaves : Type u
  sheafCategory : Category.{v} sheaves
  grothendieckTopos : Prop

structure SheafToposEvidence (C : ToposSpace) (S : SheafToposPackage C) where
  siteClosed : S.site
  coverageClosed : ∀ s, S.coverage s
  sheavesClosed : S.sheaves
  categoryClosed : S.sheafCategory
  toposClosed : S.grothendieckTopos

def SheafToposClosed (C : ToposSpace) (S : SheafToposPackage C) : Prop :=
  S.site ∧ (∀ s, S.coverage s) ∧ S.sheaves ∧ S.sheafCategory ∧ S.grothendieckTopos

theorem sheaf_topos_closed_from_evidence (C : ToposSpace) (S : SheafToposPackage C)
    (E : SheafToposEvidence C S) : SheafToposClosed C S := by
  exact And.intro E.siteClosed
    (And.intro E.coverageClosed
      (And.intro E.sheavesClosed
        (And.intro E.categoryClosed E.toposClosed)))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse