import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SetTheoryFoundationPackage where
  zfAxioms : Prop
  choicePrinciple : Prop
  grothendieckUniverses : Prop
  axiomOfInfinity : Prop

def SetTheoryFoundationClosed (S : SetTheoryFoundationPackage) : Prop :=
  S.zfAxioms ∧ S.choicePrinciple ∧ S.grothendieckUniverses ∧ S.axiomOfInfinity

theorem set_theory_foundation_closed (S : SetTheoryFoundationPackage) (h1 : S.zfAxioms) (h2 : S.choicePrinciple) (h3 : S.grothendieckUniverses) (h4 : S.axiomOfInfinity) : SetTheoryFoundationClosed S := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse