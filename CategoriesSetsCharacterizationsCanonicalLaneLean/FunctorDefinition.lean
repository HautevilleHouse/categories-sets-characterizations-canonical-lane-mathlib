import CategoriesSetsCharacterizationsCanonicalLaneLean.CategoryStructure

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure FunctorPackage (C D : CategoryPackage) where
  objectMap : C.objType → D.objType
  morphismMap : C.morType → D.morType
  functoriality : Prop
  identityPreservation : Prop
  compositionPreservation : Prop

structure FunctorEvidence {C D : CategoryPackage} (F : FunctorPackage C D) where
  functorialityClosed : F.functoriality
  identityPreservationClosed : F.identityPreservation
  compositionPreservationClosed : F.compositionPreservation

def FunctorClosed {C D : CategoryPackage} (F : FunctorPackage C D) : Prop :=
  F.functoriality ∧ F.identityPreservation ∧ F.compositionPreservation

theorem functor_closed_from_evidence {C D : CategoryPackage} (F : FunctorPackage C D) (E : FunctorEvidence F) : FunctorClosed F :=
  by
    exact And.intro E.functorialityClosed (And.intro E.identityPreservationClosed E.compositionPreservationClosed)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse