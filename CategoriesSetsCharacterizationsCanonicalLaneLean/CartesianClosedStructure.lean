import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure CartesianClosedPackage where
  category : Type u
  terminalObject : Prop
  binaryProducts : Prop
  exponentials : Prop
  evaluationMap : Prop
  closureByCurrying : Prop

structure CartesianClosedEvidence (C : CartesianClosedPackage) where
  terminalObjectClosed : C.terminalObject
  binaryProductsClosed : C.binaryProducts
  exponentialsClosed : C.exponentials
  evaluationMapClosed : C.evaluationMap
  closureByCurryingClosed : C.closureByCurrying

def CartesianClosedClosed (C : CartesianClosedPackage) : Prop :=
  C.terminalObject ∧ C.binaryProducts ∧ C.exponentials ∧ C.evaluationMap ∧ C.closureByCurrying

theorem cartesian_closed_closed_from_evidence (C : CartesianClosedPackage) (E : CartesianClosedEvidence C) :
    CartesianClosedClosed C := by
  exact And.intro E.terminalObjectClosed (And.intro E.binaryProductsClosed (And.intro E.exponentialsClosed (And.intro E.evaluationMapClosed E.closureByCurryingClosed)))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse