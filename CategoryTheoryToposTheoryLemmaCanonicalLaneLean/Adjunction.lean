import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure AdjunctionPackage (C D : Type u) [Category.{v} C] [Category.{v} D] (F : C ⥤ D) (G : D ⥤ C) where
  unit : 𝟙 C ⟹ G ⋙ F
  counit : F ⋙ G ⟹ 𝟙 D
  triangleIdentities : Prop
  adjunctionIsoHomSets : Prop

structure AdjunctionEvidence {C D : Type u} [Category.{v} C] [Category.{v} D] {F : C ⥤ D} {G : D ⥤ C}
    (A : AdjunctionPackage C D F G) where
  triangleIdentitiesClosed : A.triangleIdentities
  adjunctionIsoHomSetsClosed : A.adjunctionIsoHomSets

def AdjunctionClosed {C D : Type u} [Category.{v} C] [Category.{v} D] {F : C ⥤ D} {G : D ⥤ C}
    (A : AdjunctionPackage C D F G) : Prop :=
  A.triangleIdentities ∧ A.adjunctionIsoHomSets

theorem adjunction_closed_from_evidence {C D : Type u} [Category.{v} C] [Category.{v} D]
    {F : C ⥤ D} {G : D ⥤ C} (A : AdjunctionPackage C D F G) (E : AdjunctionEvidence A) :
    AdjunctionClosed A := by
  exact And.intro E.triangleIdentitiesClosed E.adjunctionIsoHomSetsClosed

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse