import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.admittedClosure

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admittedClosureTerm

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse