import CategoriesSetsCharacterizationsCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure AdjointFunctorPackage (C D : SetCategoryPackage) where
  leftAdjoint : FunctorPackage C D
  rightAdjoint : FunctorPackage D C
  unit : NaturalTransformationPackage (FunctorPackage.id C) (FunctorPackage.comp rightAdjoint leftAdjoint)
  counit : NaturalTransformationPackage (FunctorPackage.comp leftAdjoint rightAdjoint) (FunctorPackage.id D)
  triangleIdentities : Prop

structure AdjointFunctorEvidence {C D : SetCategoryPackage} (A : AdjointFunctorPackage C D) where
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed {C D : SetCategoryPackage} (A : AdjointFunctorPackage C D) : Prop :=
  A.triangleIdentities

theorem adjoint_functor_closed_from_evidence {C D : SetCategoryPackage} (A : AdjointFunctorPackage C D)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact E.triangleIdentitiesClosed

end HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean