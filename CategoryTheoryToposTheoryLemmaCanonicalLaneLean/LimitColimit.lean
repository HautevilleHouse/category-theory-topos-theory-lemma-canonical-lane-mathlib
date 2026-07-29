import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure LimitPackage (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  cone : Cone F
  universalProperty : Prop

def LimitClosed {J C : Type u} [Category.{v} J] [Category.{v} C] {F : J ⥤ C}
    (L : LimitPackage J C F) : Prop := L.universalProperty

structure ColimitPackage (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  cocone : Cocone F
  universalProperty : Prop

def ColimitClosed {J C : Type u} [Category.{v} J] [Category.{v} C] {F : J ⥤ C}
    (CoconePkg : ColimitPackage J C F) : Prop := CoconePkg.universalProperty

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse