import CategoriesSetsCharacterizationsCanonicalLaneLean.SetCategory

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure FunctorPackage (C D : SetCategoryPackage) where
  objMap : C.objects → D.objects
  morMap : {A B : C.objects} → C.morphisms A B → D.morphisms (objMap A) (objMap B)
  functoriality : ∀ {A B C : C.objects} (f : C.morphisms A B) (g : C.morphisms B C),
    morMap (C.composition g f) = D.composition (morMap g) (morMap f)
  identityPreservation : ∀ (A : C.objects), morMap (C.identity A) = D.identity (objMap A)

structure FunctorEvidence {C D : SetCategoryPackage} (F : FunctorPackage C D) where
  functorialityClosed : F.functoriality
  identityPreservationClosed : F.identityPreservation

def FunctorClosed {C D : SetCategoryPackage} (F : FunctorPackage C D) : Prop :=
  F.functoriality ∧ F.identityPreservation

theorem functor_closed_from_evidence {C D : SetCategoryPackage} (F : FunctorPackage C D)
    (E : FunctorEvidence F) : FunctorClosed F := by
  exact And.intro E.functorialityClosed E.identityPreservationClosed

end HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean