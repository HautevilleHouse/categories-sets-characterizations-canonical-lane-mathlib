import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure AdjointFunctorPackage where
  functor : Type u
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  solutionSetCondition : Prop
  freydAdjointTheorem : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  leftAdjointExistsClosed : A.leftAdjointExists
  rightAdjointExistsClosed : A.rightAdjointExists
  solutionSetConditionClosed : A.solutionSetCondition
  freydAdjointTheoremClosed : A.freydAdjointTheorem

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.solutionSetCondition ∧ A.freydAdjointTheorem

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointExistsClosed (And.intro E.rightAdjointExistsClosed (And.intro E.solutionSetConditionClosed E.freydAdjointTheoremClosed))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse