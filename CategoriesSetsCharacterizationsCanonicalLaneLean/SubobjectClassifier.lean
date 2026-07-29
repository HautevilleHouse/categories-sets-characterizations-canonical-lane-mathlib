import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.SetCategoryFoundation

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SubobjectClassifier where
  truthValues : SetsCategoryObject
  characteristicMorphism : SetsCategoryMorphism truthValues truthValues
  subobjectProperty : Prop
  uniqueLifting : Prop
  subobjectPropertyClosed : subobjectProperty
  uniqueLiftingClosed : uniqueLifting

def SubobjectClassifierClosed (S : SubobjectClassifier) : Prop :=
  S.subobjectProperty ∧ S.uniqueLifting

theorem subobject_classifier_closed (S : SubobjectClassifier) :
    SubobjectClassifierClosed S := by
  exact And.intro S.subobjectPropertyClosed S.uniqueLiftingClosed

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse