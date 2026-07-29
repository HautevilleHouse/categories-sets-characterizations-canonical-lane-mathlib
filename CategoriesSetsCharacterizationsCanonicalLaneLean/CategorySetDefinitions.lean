import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategorySet where
  carrier : Type u
  morphisms : carrier → carrier → Type v
  identity : (x : carrier) → morphisms x x
  composition : {x y z : carrier} → morphisms x y → morphisms y z → morphisms x z
  associativity : {x y z w : carrier} (f : morphisms x y) (g : morphisms y z) (h : morphisms z w) → composition (composition f g) h = composition f (composition g h)
  identityLeft : {x y : carrier} (f : morphisms x y) → composition (identity x) f = f
  identityRight : {x y : carrier} (f : morphisms x y) → composition f (identity y) = f

structure SetCategory (C : CategorySet) where
  isSetCategory : (x y : C.carrier) → Nonempty (C.morphisms x y := C.carrier → C.carrier)
  compositionIsFunctionComposition : (x y z : C.carrier) (f : C.morphisms x y) (g : C.morphisms y z) → C.composition f g = g ∘ f
  identityIsIdentity : (x : C.carrier) → C.identity x = id
  terminalObject : C.carrier
  terminalMorphisms : (x : C.carrier) → C.morphisms x terminalObject
  uniquenessTerminal : (x : C.carrier) (f g : C.morphisms x terminalObject) → f = g
  initialObject : C.carrier
  initialMorphisms : (x : C.carrier) → C.morphisms initialObject x
  uniquenessInitial : (x : C.carrier) (f g : C.morphisms initialObject x) → f = g

def SetCategoriesClosed (C : CategorySet) (S : SetCategory C) : Prop :=
  S.isSetCategory (C.carrier -> C.carrier) ∧ S.compositionIsFunctionComposition ∧ S.identityIsIdentity ∧
  Nonempty S.terminalObject ∧ Nonempty S.initialObject

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse
