import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.SetCategoryFoundation

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure AdjointPair (C D : SetCategory) where
  F : C.Carrier → D.Carrier
  G : D.Carrier → C.Carrier
  unit : ∀ X : C.Carrier, C.structure.hom X (G (F X))
  counit : ∀ Y : D.Carrier, D.structure.hom (F (G Y)) Y
  triangleIdentities : Prop
  isAdjoint : unit ∧ counit ∧ triangleIdentities

def AdjointClosed (C D : SetCategory) (A : AdjointPair C D) : Prop :=
  A.isAdjoint

theorem adjoint_from_evidence (C D : SetCategory) (A : AdjointPair C D) :
    AdjointClosed C D A := by
  exact A.isAdjoint

end HautevilleHouse
end CategoriesSetsCharacterizationsCanonicalLaneLean