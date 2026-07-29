import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure SetCharacterizationPackage where
  universeLevels : Prop
  extensionalityAxiom : Prop
  comprehensionAxiom : Prop
  pairingAxiom : Prop
  unionAxiom : Prop
  powerSetAxiom : Prop
  infinityAxiom : Prop
  replacementAxiom : Prop
  foundationAxiom : Prop
  choiceAxiom : Prop

structure SetCharacterizationEvidence (S : SetCharacterizationPackage) where
  universeLevelsClosed : S.universeLevels
  extensionalityAxiomClosed : S.extensionalityAxiom
  comprehensionAxiomClosed : S.comprehensionAxiom
  pairingAxiomClosed : S.pairingAxiom
  unionAxiomClosed : S.unionAxiom
  powerSetAxiomClosed : S.powerSetAxiom
  infinityAxiomClosed : S.infinityAxiom
  replacementAxiomClosed : S.replacementAxiom
  foundationAxiomClosed : S.foundationAxiom
  choiceAxiomClosed : S.choiceAxiom

def SetCharacterizationClosed (S : SetCharacterizationPackage) : Prop :=
  S.universeLevels ∧ S.extensionalityAxiom ∧ S.comprehensionAxiom ∧
  S.pairingAxiom ∧ S.unionAxiom ∧ S.powerSetAxiom ∧
  S.infinityAxiom ∧ S.replacementAxiom ∧ S.foundationAxiom ∧ S.choiceAxiom

theorem set_characterization_closed_from_evidence
    (S : SetCharacterizationPackage) (E : SetCharacterizationEvidence S) :
    SetCharacterizationClosed S := by
  exact And.intro E.universeLevelsClosed
    (And.intro E.extensionalityAxiomClosed
      (And.intro E.comprehensionAxiomClosed
        (And.intro E.pairingAxiomClosed
          (And.intro E.unionAxiomClosed
            (And.intro E.powerSetAxiomClosed
              (And.intro E.infinityAxiomClosed
                (And.intro E.replacementAxiomClosed
                  (And.intro E.foundationAxiomClosed E.choiceAxiomClosed))))))))

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse