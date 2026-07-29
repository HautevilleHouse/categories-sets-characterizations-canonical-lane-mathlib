import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure FunctorialCharacterizationPackage where
  functoriality : Prop
  naturalTransformation : Prop
  equivalenceOfCategories : Prop
  yonedaEmbedding : Prop
  representableFunctors : Prop
  adjointFunctors : Prop
  limitPreserving : Prop
  colimitPreserving : Prop

structure FunctorialCharacterizationEvidence (F : FunctorialCharacterizationPackage) where
  functorialityClosed : F.functoriality
  naturalTransformationClosed : F.naturalTransformation
  equivalenceOfCategoriesClosed : F.equivalenceOfCategories
  yonedaEmbeddingClosed : F.yonedaEmbedding
  representableFunctorsClosed : F.representableFunctors
  adjointFunctorsClosed : F.adjointFunctors
  limitPreservingClosed : F.limitPreserving
  colimitPreservingClosed : F.colimitPreserving

def FunctorialCharacterizationClosed (F : FunctorialCharacterizationPackage) : Prop :=
  F.functoriality ∧ F.naturalTransformation ∧ F.equivalenceOfCategories ∧
  F.yonedaEmbedding ∧ F.representableFunctors ∧ F.adjointFunctors ∧
  F.limitPreserving ∧ F.colimitPreserving

theorem functorial_characterization_closed_from_evidence
    (F : FunctorialCharacterizationPackage) (E : FunctorialCharacterizationEvidence F) :
    FunctorialCharacterizationClosed F := by
  exact And.intro E.functorialityClosed
    (And.intro E.naturalTransformationClosed
      (And.intro E.equivalenceOfCategoriesClosed
        (And.intro E.yonedaEmbeddingClosed
          (And.intro E.representableFunctorsClosed
            (And.intro E.adjointFunctorsClosed
              (And.intro E.limitPreservingClosed E.colimitPreservingClosed))))))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse