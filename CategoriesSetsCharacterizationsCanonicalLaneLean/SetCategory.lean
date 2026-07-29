import CategoriesSetsCharacterizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SetCategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (A : objects) → morphisms A A
  composition : {A B C : objects} → morphisms B C → morphisms A B → morphisms A C
  associativity : ∀ {A B C D : objects} (f : morphisms C D) (g : morphisms B C) (h : morphisms A B),
    composition (composition f g) h = composition f (composition g h)
  identity_left : ∀ {A B : objects} (f : morphisms A B), composition (identity B) f = f
  identity_right : ∀ {A B : objects} (f : morphisms A B), composition f (identity A) = f

structure SetCategoryEvidence (C : SetCategoryPackage) where
  associativityClosed : C.associativity
  identityLeftClosed : C.identity_left
  identityRightClosed : C.identity_right

def SetCategoryClosed (C : SetCategoryPackage) : Prop :=
  C.associativity ∧ C.identity_left ∧ C.identity_right

theorem set_category_closed_from_evidence (C : SetCategoryPackage) (E : SetCategoryEvidence C) :
    SetCategoryClosed C := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean