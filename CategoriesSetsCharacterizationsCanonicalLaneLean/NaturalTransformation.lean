import CategoriesSetsCharacterizationsCanonicalLaneLean.FunctorCategory

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure NaturalTransformationPackage {C D : SetCategoryPackage} (F G : FunctorPackage C D) where
  component : (X : C.objects) → D.morphisms (F.objMap X) (G.objMap X)
  naturality : ∀ {X Y : C.objects} (f : C.morphisms X Y),
    D.composition (G.morMap f) (component X) = D.composition (component Y) (F.morMap f)

structure NaturalTransformationEvidence {C D : SetCategoryPackage} {F G : FunctorPackage C D}
    (η : NaturalTransformationPackage F G) where
  naturalityClosed : η.naturality

def NaturalTransformationClosed {C D : SetCategoryPackage} {F G : FunctorPackage C D}
    (η : NaturalTransformationPackage F G) : Prop :=
  η.naturality

theorem natural_transformation_closed_from_evidence {C D : SetCategoryPackage} {F G : FunctorPackage C D}
    (η : NaturalTransformationPackage F G) (E : NaturalTransformationEvidence η) :
    NaturalTransformationClosed η := by
  exact E.naturalityClosed

end HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean