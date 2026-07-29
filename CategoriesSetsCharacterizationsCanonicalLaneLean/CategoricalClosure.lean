import CategoriesSetsCharacterizationsCanonicalLaneLean.FinalTheorem

/-!
# Categorical Closure Package
-/

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CategoricalClosurePackage where
  closureOperator : (Set → Prop) → Set
  closureProperties : Prop
  closureIdempotent : Prop
  monotonicity : Prop

structure CategoricalClosureEvidence (C : CategoricalClosurePackage) where
  closurePropertiesClosed : C.closureProperties
  closureIdempotentClosed : C.closureIdempotent
  monotonicityClosed : C.monotonicity

def CategoricalClosureClosed (C : CategoricalClosurePackage) : Prop :=
  C.closureProperties ∧ C.closureIdempotent ∧ C.monotonicity

theorem categorical_closure_closed_from_evidence
    (C : CategoricalClosurePackage) (E : CategoricalClosureEvidence C) :
    CategoricalClosureClosed C := by
  exact And.intro E.closurePropertiesClosed
    (And.intro E.closureIdempotentClosed E.monotonicityClosed)

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse