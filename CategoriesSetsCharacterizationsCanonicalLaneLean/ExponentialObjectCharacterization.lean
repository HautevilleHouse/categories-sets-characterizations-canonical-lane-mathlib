import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure ExponentialObjectPackage (C : Type u) [Category.{v} C] where
  cartesianClosed : Prop
  exponentialExists : Prop
  evaluationMap : Prop
  curryUncurryNatural : Prop

def ExponentialObjectClosed (C : Type u) [Category.{v} C] (P : ExponentialObjectPackage C) : Prop :=
  P.cartesianClosed ∧ P.exponentialExists ∧ P.evaluationMap ∧ P.curryUncurryNatural

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse