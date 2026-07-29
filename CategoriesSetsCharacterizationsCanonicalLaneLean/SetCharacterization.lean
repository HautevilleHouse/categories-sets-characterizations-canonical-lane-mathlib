import CategoriesSetsCharacterizationsCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SetCategoryPackage where
  setsAsCategories : CategoryPackage
  functionsAsMorphisms : Prop
  discreteCategory : Prop

structure SetCategoryEvidence (S : SetCategoryPackage) where
  functionsAsMorphismsClosed : S.functionsAsMorphisms
  discreteCategoryClosed : S.discreteCategory

def SetCategoryClosed (S : SetCategoryPackage) : Prop :=
  S.functionsAsMorphisms ∧ S.discreteCategory

theorem set_category_closed_from_evidence (S : SetCategoryPackage) (E : SetCategoryEvidence S) : SetCategoryClosed S :=
  And.intro E.functionsAsMorphismsClosed E.discreteCategoryClosed

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse