import CategoriesSetsCharacterizationsCanonicalLaneLean.SetCharacterization

/-!
# Categorical Foundation Package
-/

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategoricalFoundationPackage (S : SetCharacterizationPackage) where
  categoricalStructure : Prop
  categoryType : Type u
  objectsSets : S.targetSet → Prop
  morphismStructure : Prop
  compositionLaw : Prop

structure CategoricalFoundationEvidence {S : SetCharacterizationPackage} (C : CategoricalFoundationPackage S) where
  categoricalStructureClosed : C.categoricalStructure
  morphismStructureClosed : C.morphismStructure
  compositionLawClosed : C.compositionLaw

def CategoricalFoundationClosed {S : SetCharacterizationPackage} (C : CategoricalFoundationPackage S) : Prop :=
  C.categoricalStructure ∧ C.morphismStructure ∧ C.compositionLaw

theorem categorical_foundation_closed_from_evidence
    {S : SetCharacterizationPackage} (C : CategoricalFoundationPackage S)
    (E : CategoricalFoundationEvidence C) : CategoricalFoundationClosed C := by
  exact And.intro E.categoricalStructureClosed
    (And.intro E.morphismStructureClosed E.compositionLawClosed)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse