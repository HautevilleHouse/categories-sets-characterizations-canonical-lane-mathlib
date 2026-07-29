import CategoriesSetsCharacterizationsCanonicalLaneLean.LimitsAndColimits

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SievePackage (C : SetCategoryPackage) (X : C.objects) where
  arrows : (Y : C.objects) → Set (C.morphisms Y X)
  downwardsClosed : ∀ {Y Z : C.objects} (f : C.morphisms Z Y) (g : C.morphisms Y X), g ∈ arrows Y → C.composition g f ∈ arrows Z

structure SieveEvidence {C : SetCategoryPackage} {X : C.objects} (S : SievePackage C X) where
  downwardsClosedClosed : S.downwardsClosed

def SieveClosed {C : SetCategoryPackage} {X : C.objects} (S : SievePackage C X) : Prop :=
  S.downwardsClosed

theorem sieve_closed_from_evidence {C : SetCategoryPackage} {X : C.objects} (S : SievePackage C X)
    (E : SieveEvidence S) : SieveClosed S := by
  exact E.downwardsClosedClosed

structure SheafPackage (C : SetCategoryPackage) (J : SetCategoryPackage) where
  site : (X : C.objects) → Set (SievePackage C X)
  sheafCondition : (F : FunctorPackage C (SetCategoryPackage.mk (C.objects → Type u) (λ A B => A → B) (λ A x => x) (λ f g x => f (g x)))) → Prop

structure SheafEvidence {C J : SetCategoryPackage} (S : SheafPackage C J) where
  sheafConditionClosed : S.sheafCondition

def SheafClosed {C J : SetCategoryPackage} (S : SheafPackage C J) : Prop :=
  S.sheafCondition

theorem sheaf_closed_from_evidence {C J : SetCategoryPackage} (S : SheafPackage C J)
    (E : SheafEvidence S) : SheafClosed S := by
  exact E.sheafConditionClosed

end HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean