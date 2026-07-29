import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure LimitColimitPackage (C : Type u) [Category.{v} C] where
  limitsExist : Prop
  colimitsExist : Prop
  functorConservation : Prop

def LimitColimitClosed (C : Type u) [Category.{v} C] (P : LimitColimitPackage C) : Prop :=
  P.limitsExist ∧ P.colimitsExist ∧ P.functorConservation

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse