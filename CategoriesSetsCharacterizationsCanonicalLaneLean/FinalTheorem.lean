import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

def ConstrainedCategoriesSetsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categories_sets_endgame (A : AdmissibleClass) :
    ConstrainedCategoriesSetsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse