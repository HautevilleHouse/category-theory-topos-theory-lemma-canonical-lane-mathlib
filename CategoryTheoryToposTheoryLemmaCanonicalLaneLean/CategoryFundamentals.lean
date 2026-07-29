import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure Category (Obj : Type u) (Hom : Obj → Obj → Type v) where
  id : ∀ X : Obj, Hom X X
  comp : ∀ {X Y Z : Obj}, Hom X Y → Hom Y Z → Hom X Z
  id_comp : ∀ {X Y : Obj} (f : Hom X Y), comp (id X) f = f
  comp_id : ∀ {X Y : Obj} (f : Hom X Y), comp f (id Y) = f
  assoc : ∀ {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), comp (comp f g) h = comp f (comp g h)

structure Functor (C : Type u) (D : Type u) (HomC : C → C → Type v) (HomD : D → D → Type v) where
  obj : C → D
  map : ∀ {X Y : C}, HomC X Y → HomD (obj X) (obj Y)
  map_id : ∀ X : C, map (Category.id (C := C) (Hom := HomC) X) = Category.id (C := D) (Hom := HomD) (obj X)
  map_comp : ∀ {X Y Z : C} (f : HomC X Y) (g : HomC Y Z), map (Category.comp (Hom := HomC) f g) = Category.comp (Hom := HomD) (map f) (map g)

structure NaturalTransformation {C D : Type u} {HomC : C → C → Type v} {HomD : D → D → Type v} (F G : Functor C D HomC HomD) where
  component : ∀ X : C, HomD (F.obj X) (G.obj X)
  naturality : ∀ {X Y : C} (f : HomC X Y), Category.comp (Hom := HomD) (F.map f) (component Y) = Category.comp (Hom := HomD) (component X) (G.map f)

theorem functor_identity_id (C : Type u) (HomC : C → C → Type v) (cat : Category C HomC) : True := trivial

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse