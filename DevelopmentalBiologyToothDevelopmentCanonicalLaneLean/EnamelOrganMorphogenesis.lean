import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentCanonicalLaneLean

structure EnamelOrganMorphogenesisPackage where
  innerEnamelEpitheliumFormation : Prop
  outerEnamelEpitheliumFormation : Prop
  stellateReticulumFormation : Prop
  stratumIntermediumFormation : Prop
  cervicalLoopFormation : Prop
  cuspPatternDetermination : Prop
  cellProliferation : Prop
  cellMigration : Prop

structure EnamelOrganMorphogenesisEvidence (E : EnamelOrganMorphogenesisPackage) where
  innerEnamelEpitheliumFormationClosed : E.innerEnamelEpitheliumFormation
  outerEnamelEpitheliumFormationClosed : E.outerEnamelEpitheliumFormation
  stellateReticulumFormationClosed : E.stellateReticulumFormation
  stratumIntermediumFormationClosed : E.stratumIntermediumFormation
  cervicalLoopFormationClosed : E.cervicalLoopFormation
  cuspPatternDeterminationClosed : E.cuspPatternDetermination
  cellProliferationClosed : E.cellProliferation
  cellMigrationClosed : E.cellMigration

def EnamelOrganMorphogenesisClosed (E : EnamelOrganMorphogenesisPackage) : Prop :=
  E.innerEnamelEpitheliumFormation ∧ E.outerEnamelEpitheliumFormation ∧
  E.stellateReticulumFormation ∧ E.stratumIntermediumFormation ∧
  E.cervicalLoopFormation ∧ E.cuspPatternDetermination ∧
  E.cellProliferation ∧ E.cellMigration

theorem enamel_organ_morphogenesis_closed_from_evidence
    (E : EnamelOrganMorphogenesisPackage)
    (Ev : EnamelOrganMorphogenesisEvidence E) : EnamelOrganMorphogenesisClosed E := by
  exact And.intro Ev.innerEnamelEpitheliumFormationClosed
    (And.intro Ev.outerEnamelEpitheliumFormationClosed
      (And.intro Ev.stellateReticulumFormationClosed
        (And.intro Ev.stratumIntermediumFormationClosed
          (And.intro Ev.cervicalLoopFormationClosed
            (And.intro Ev.cuspPatternDeterminationClosed
              (And.intro Ev.cellProliferationClosed Ev.cellMigrationClosed))))))

end DevelopmentalBiologyToothDevelopmentCanonicalLaneLean
end HautevilleHouse