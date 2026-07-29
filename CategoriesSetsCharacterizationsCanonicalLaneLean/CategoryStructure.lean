import CategoriesSetsCharacterizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategoryPackage where
  objType : Type u
  morType : Type v
  identity : objType → morType
  composition : morType → morType → morType
  identityLaw : Prop
  associativityLaw : Prop
  identityLeftLaw : Prop
  identityRightLaw : Prop

structure CategoryEvidence (C : CategoryPackage) where
  identityLawClosed : C.identityLaw
  associativityLawClosed : C.associativityLaw
  identityLeftLawClosed : C.identityLeftLaw
  identityRightLawClosed : C.identityRightLaw

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.identityLaw ∧ C.associativityLaw ∧ C.identityLeftLaw ∧ C.identityRightLaw

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) : CategoryClosed C :=
  by
    exact And.intro E.identityLawClosed (And.intro E.associativityLawClosed (And.intro E.identityLeftLawClosed E.identityRightLawClosed))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse