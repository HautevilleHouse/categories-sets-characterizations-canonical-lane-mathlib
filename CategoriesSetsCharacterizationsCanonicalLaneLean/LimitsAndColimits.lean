import CategoriesSetsCharacterizationsCanonicalLaneLean.AdjointFunctor

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure LimitPackage (C : SetCategoryPackage) (J : SetCategoryPackage) where
  diagram : FunctorPackage J C
  cone : (X : C.objects) → (c : (j : J.objects) → C.morphisms X (diagram.objMap j)) → Prop
  universalProperty : Prop

structure LimitEvidence {C J : SetCategoryPackage} (L : LimitPackage C J) where
  universalPropertyClosed : L.universalProperty

def LimitClosed {C J : SetCategoryPackage} (L : LimitPackage C J) : Prop :=
  L.universalProperty

theorem limit_closed_from_evidence {C J : SetCategoryPackage} (L : LimitPackage C J)
    (E : LimitEvidence L) : LimitClosed L := by
  exact E.universalPropertyClosed

structure ColimitPackage (C : SetCategoryPackage) (J : SetCategoryPackage) where
  diagram : FunctorPackage J C
  cocone : (X : C.objects) → (c : (j : J.objects) → C.morphisms (diagram.objMap j) X) → Prop
  universalProperty : Prop

structure ColimitEvidence {C J : SetCategoryPackage} (Col : ColimitPackage C J) where
  universalPropertyClosed : Col.universalProperty

def ColimitClosed {C J : SetCategoryPackage} (Col : ColimitPackage C J) : Prop :=
  Col.universalProperty

theorem colimit_closed_from_evidence {C J : SetCategoryPackage} (Col : ColimitPackage C J)
    (E : ColimitEvidence Col) : ColimitClosed Col := by
  exact E.universalPropertyClosed

end HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean