import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  categorySetsCharStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "categories-sets-characterizations-canonical-lane"
    theoremName := "Categories Sets Characterizations"
    theoremObject := "Characterization of categories via sets"
    classicalBoundary := "Classical ZFC foundations assumed"
    categorySetsCharStatement := "Every category can be represented as a set-based structure"
    certificateLane := "bridge_closed"
    carriedRemainder := "Remaining foundation details"
  }

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse
