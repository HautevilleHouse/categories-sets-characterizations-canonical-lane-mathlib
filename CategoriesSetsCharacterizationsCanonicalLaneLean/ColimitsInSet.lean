import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure ColimitsInSetPackage where
  diagram : Type u
  colimitExist : Prop
  colimitCocone : Type u
  universalProperty : Prop
  setExample : Prop

structure ColimitsInSetEvidence (C : ColimitsInSetPackage) where
  colimitExistClosed : C.colimitExist
  universalPropertyClosed : C.universalProperty
  setExampleClosed : C.setExample

def ColimitsInSetClosed (C : ColimitsInSetPackage) : Prop :=
  C.colimitExist ∧ C.universalProperty ∧ C.setExample

theorem colimits_in_set_closed_from_evidence (C : ColimitsInSetPackage) (E : ColimitsInSetEvidence C) :
    ColimitsInSetClosed C := by
  exact And.intro E.colimitExistClosed (And.intro E.universalPropertyClosed E.setExampleClosed)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse