import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.CategorySetDefinitions

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure Monomorphism (C : CategorySet) {x y : C.carrier} (f : C.morphisms x y) where
  leftCancellative : (z : C.carrier) (g h : C.morphisms z x) → C.composition g f = C.composition h f → g = h

structure Epimorphism (C : CategorySet) {x y : C.carrier} (f : C.morphisms x y) where
  rightCancellative : (z : C.carrier) (g h : C.morphisms y z) → C.composition f g = C.composition f h → g = h

structure Isomorphism (C : CategorySet) {x y : C.carrier} (f : C.morphisms x y) where
  inverse : C.morphisms y x
  leftInverse : C.composition inverse f = C.identity x
  rightInverse : C.composition f inverse = C.identity y

theorem monomorphism_equalizer (C : CategorySet) (S : SetCategory C) (x y : C.carrier) (f : C.morphisms x y) (h : Monomorphism C f) :
  (z : C.carrier) (g : C.morphisms z x) → C.composition g f = C.composition (S.terminalMorphisms z) (S.terminalMorphisms (S.terminalObject)) → g = (S.terminalMorphisms z) := by
  sorry

theorem epimorphism_coequalizer (C : CategorySet) (S : SetCategory C) (x y : C.carrier) (f : C.morphisms x y) (h : Epimorphism C f) :
  (z : C.carrier) (g : C.morphisms y z) → C.composition f g = C.composition (S.initialMorphisms (S.initialObject)) (S.initialMorphisms z) → g = (S.initialMorphisms z) := by
  sorry

def MorphismCharacterizationsClosed (C : CategorySet) (S : SetCategory C) : Prop :=
  (∀ (x y : C.carrier) (f : C.morphisms x y), (Monomorphism C f) ∨ (Epimorphism C f) ∨ (Isomorphism C f)) ∧
  (∀ (x y : C.carrier), (f : C.morphisms x y) → Isomorphism C f → (Monomorphism C f ∧ Epimorphism C f))

theorem morphism_characterizations_closed_from_evidence (C : CategorySet) (S : SetCategory C) (h : MorphismCharacterizationsClosed C S) :
  MorphismCharacterizationsClosed C S := h

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse
