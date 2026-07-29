import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.ElementaryTopos

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SetCategoryCharacterization (T : ElementaryTopos) where
  wellPointed : Prop
  axiomOfChoice : Prop
  nno : Prop
  singletonGenerator : Prop
  characterizationProposition : Prop

def SetCategoryCharacterizationClosed {T : ElementaryTopos}
    (S : SetCategoryCharacterization T) : Prop :=
  S.wellPointed ∧ S.axiomOfChoice ∧ S.nno ∧ S.singletonGenerator ∧ S.characterizationProposition

structure SetCategoryCharacterizationEvidence {T : ElementaryTopos}
    (S : SetCategoryCharacterization T) where
  wellPointedClosed : S.wellPointed
  axiomOfChoiceClosed : S.axiomOfChoice
  nnoClosed : S.nno
  singletonGeneratorClosed : S.singletonGenerator
  characterizationPropositionClosed : S.characterizationProposition

theorem set_category_characterization_closed_from_evidence
    {T : ElementaryTopos} (S : SetCategoryCharacterization T)
    (E : SetCategoryCharacterizationEvidence S) :
    SetCategoryCharacterizationClosed S := by
  exact And.intro E.wellPointedClosed
    (And.intro E.axiomOfChoiceClosed
      (And.intro E.nnoClosed
        (And.intro E.singletonGeneratorClosed E.characterizationPropositionClosed)))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse