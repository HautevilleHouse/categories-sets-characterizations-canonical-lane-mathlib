import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

def ConstrainedCategoriesSetsCharacterizationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categories_sets_characterizations_endgame (A : AdmissibleClass) :
    ConstrainedCategoriesSetsCharacterizationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse