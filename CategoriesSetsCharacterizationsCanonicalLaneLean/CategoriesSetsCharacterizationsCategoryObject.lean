import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategoryObject where
  category : Type u
  objects : Type v
  morphisms : objects → objects → Type w
  identity : (X : objects) → morphisms X X
  compose : {X Y Z : objects} → morphisms X Y → morphisms Y Z → morphisms X Z
  associativity : ∀ {X Y Z W : objects} (f : morphisms X Y) (g : morphisms Y Z) (h : morphisms Z W), compose (compose f g) h = compose f (compose g h)
  identityLeft : ∀ {X Y : objects} (f : morphisms X Y), compose (identity X) f = f
  identityRight : ∀ {X Y : objects} (f : morphisms X Y), compose f (identity Y) = f

def CategoryWitnessClosed (C : CategoryObject) : Prop :=
  True

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse