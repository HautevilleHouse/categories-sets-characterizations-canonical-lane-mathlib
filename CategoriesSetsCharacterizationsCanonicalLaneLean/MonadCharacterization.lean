import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure MonadCharacterizationPackage (T : Type u → Type v) where
  multiplicationAssoc : Prop
  unitLeftIdentity : Prop
  unitRightIdentity : Prop
  kleisliCategoryDefined : Prop

def MonadCharacterizationClosed (T : Type u → Type v) (P : MonadCharacterizationPackage T) : Prop :=
  P.multiplicationAssoc ∧ P.unitLeftIdentity ∧ P.unitRightIdentity ∧ P.kleisliCategoryDefined

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse