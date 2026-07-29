import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SetCategory where
  Carrier : Type u
  structure : CategoryStruct Carrier
  limits : Prop
  colimits : Prop
  isClosedUnderLimitsAndColimits : limits ∧ colimits

structure FunctorCategory (C D : SetCategory) where
  objects : Type v
  morphisms : objects → objects → Type w
  identity : ∀ X : objects, morphisms X X
  composition : ∀ X Y Z : objects, morphisms Y Z → morphisms X Y → morphisms X Z
  identityLawLeft : ∀ X Y (f : morphisms X Y), composition X Y Y (identity Y) f = f
  identityLawRight : ∀ X Y (f : morphisms X Y), composition X X Y f (identity X) = f
  associativityLaw : ∀ X Y Z W (f : morphisms X Y) (g : morphisms Y Z) (h : morphisms Z W),
    composition X Z W h (composition X Y Z g f) = composition X Y W (composition Y Z W h g) f

def SetCategoryClosed (C : SetCategory) : Prop :=
  C.limits ∧ C.colimits

end HautevilleHouse
end CategoriesSetsCharacterizationsCanonicalLaneLean