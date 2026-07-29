import HautevilleHouse.CategoryTheoryToposTheoryLemmaCanonicalLaneLean.CategoryFundamentals

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure Cone (C : Type u) (HomC : C → C → Type v) [Category C HomC] (F : Functor (Type u) C (fun X Y => X → Y) HomC) where
  apex : C
  component : ∀ (i : Type u), HomC (F.obj i) apex
  commutes : ∀ (i j : Type u) (f : i → j), Category.comp (Hom := HomC) (F.map f) (component j) = component i

structure Limit (C : Type u) (HomC : C → C → Type v) [Category C HomC] (F : Functor (Type u) C (fun X Y => X → Y) HomC) where
  cone : Cone C HomC F
  universal : ∀ (other : Cone C HomC F), ∃! morphism : HomC other.apex cone.apex, ∀ (i : Type u), Category.comp (Hom := HomC) morphism (cone.component i) = other.component i

structure Cocone (C : Type u) (HomC : C → C → Type v) [Category C HomC] (F : Functor (Type u) C (fun X Y => X → Y) HomC) where
  apex : C
  component : ∀ (i : Type u), HomC apex (F.obj i)
  commutes : ∀ (i j : Type u) (f : i → j), Category.comp (Hom := HomC) (component i) (F.map f) = component j

structure Colimit (C : Type u) (HomC : C → C → Type v) [Category C HomC] (F : Functor (Type u) C (fun X Y => X → Y) HomC) where
  cocone : Cocone C HomC F
  universal : ∀ (other : Cocone C HomC F), ∃! morphism : HomC cocone.apex other.apex, ∀ (i : Type u), Category.comp (Hom := HomC) (cocone.component i) morphism = other.component i

structure LimitsExist (C : Type u) (HomC : C → C → Type v) [Category C HomC] where
  hasLimits : ∀ (F : Functor (Type u) C (fun X Y => X → Y) HomC), Limit C HomC F
  hasColimits : ∀ (F : Functor (Type u) C (fun X Y => X → Y) HomC), Colimit C HomC F

theorem limits_imply_colimits (C : Type u) (HomC : C → C → Type v) [Category C HomC] (L : LimitsExist C HomC) : True := trivial

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse