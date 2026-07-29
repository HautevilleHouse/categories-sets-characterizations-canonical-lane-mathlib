import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure ElementaryTopos where
  category : Type u → Type v → Type w
  terminalObject : Prop
  pullbacks : Prop
  exponentials : Prop
  subobjectClassifier : Prop
  toposProperties : Prop

def ElementaryToposClosed (T : ElementaryTopos) : Prop :=
  T.terminalObject ∧ T.pullbacks ∧ T.exponentials ∧ T.subobjectClassifier ∧ T.toposProperties

structure ElementaryToposEvidence (T : ElementaryTopos) where
  terminalObjectClosed : T.terminalObject
  pullbacksClosed : T.pullbacks
  exponentialsClosed : T.exponentials
  subobjectClassifierClosed : T.subobjectClassifier
  toposPropertiesClosed : T.toposProperties

theorem elementary_topos_closed_from_evidence (T : ElementaryTopos)
    (E : ElementaryToposEvidence T) : ElementaryToposClosed T := by
  exact And.intro E.terminalObjectClosed
    (And.intro E.pullbacksClosed
      (And.intro E.exponentialsClosed
        (And.intro E.subobjectClassifierClosed E.toposPropertiesClosed)))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse