import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure AdjointFunctorPackage (F : Type u → Type v) (G : Type v → Type u) where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  naturalBijHomSet : Prop

def AdjointFunctorClosed (F : Type u → Type v) (G : Type v → Type u) (P : AdjointFunctorPackage F G) : Prop :=
  P.leftAdjointExists ∧ P.rightAdjointExists ∧ P.naturalBijHomSet

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse