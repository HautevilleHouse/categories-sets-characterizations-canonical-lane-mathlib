import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategoryDefinitionPackage where
  objectsClass : Type u
  morphismsClass : Type v
  compositionLaw : Prop
  identityMorphisms : Prop
  associativity : Prop
  unitLaws : Prop

def CategoryDefinitionClosed (C : CategoryDefinitionPackage) : Prop :=
  C.compositionLaw ∧ C.identityMorphisms ∧ C.associativity ∧ C.unitLaws

theorem category_definition_closed (C : CategoryDefinitionPackage) (h1 : C.compositionLaw) (h2 : C.identityMorphisms) (h3 : C.associativity) (h4 : C.unitLaws) : CategoryDefinitionClosed C := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse