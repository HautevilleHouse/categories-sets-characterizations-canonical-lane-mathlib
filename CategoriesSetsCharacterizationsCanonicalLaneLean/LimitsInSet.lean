import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure LimitsInSetPackage where
  diagram : Type u
  limitExist : Prop
  limitCone : Type u
  universalProperty : Prop
  setExample : Prop

structure LimitsInSetEvidence (L : LimitsInSetPackage) where
  limitExistClosed : L.limitExist
  universalPropertyClosed : L.universalProperty
  setExampleClosed : L.setExample

def LimitsInSetClosed (L : LimitsInSetPackage) : Prop :=
  L.limitExist ∧ L.universalProperty ∧ L.setExample

theorem limits_in_set_closed_from_evidence (L : LimitsInSetPackage) (E : LimitsInSetEvidence L) :
    LimitsInSetClosed L := by
  exact And.intro E.limitExistClosed (And.intro E.universalPropertyClosed E.setExampleClosed)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse