import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.CategorySetDefinitions

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategorySetWithEvidence (C : CategorySet) (S : SetCategory C) where
  evidence : SetCategoriesClosed C S
  singletonSet : C.carrier
  singletonMorphisms : (x : C.carrier) → C.morphisms singletonSet x
  singletonUniqueness : (x : C.carrier) (f g : C.morphisms singletonSet x) → f = g
  emptySet : C.carrier
  emptyMorphisms : (x : C.carrier) → C.morphisms x emptySet
  emptyUniqueness : (x : C.carrier) (f g : C.morphisms x emptySet) → f = g
  productExistence : (x y : C.carrier) → C.carrier
  productMorphisms : (x y : C.carrier) → C.morphisms (productExistence x y) x ∧ C.morphisms (productExistence x y) y
  productUniversal : (x y z : C.carrier) (f : C.morphisms z x) (g : C.morphisms z y) → C.morphisms z (productExistence x y)
  coproductExistence : (x y : C.carrier) → C.carrier
  coproductMorphisms : (x y : C.carrier) → C.morphisms x (coproductExistence x y) ∧ C.morphisms y (coproductExistence x y)
  coproductUniversal : (x y z : C.carrier) (f : C.morphisms x z) (g : C.morphisms y z) → C.morphisms (coproductExistence x y) z

def SetCategoryExamplesClosed (C : CategorySet) (S : SetCategory C) (E : CategorySetWithEvidence C S) : Prop :=
  SetCategoriesClosed C S ∧ E.singletonSet = S.terminalObject ∧ E.emptySet = S.initialObject

theorem set_category_examples_closed_from_evidence (C : CategorySet) (S : SetCategory C) (E : CategorySetWithEvidence C S) (h : SetCategoryExamplesClosed C S E) :
  SetCategoryExamplesClosed C S E := h

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse
