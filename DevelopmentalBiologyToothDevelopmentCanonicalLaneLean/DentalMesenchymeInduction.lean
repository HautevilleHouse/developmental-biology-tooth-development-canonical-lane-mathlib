import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentCanonicalLaneLean

structure DentalMesenchymeInductionPackage where
  odontoblastDifferentiation : Prop
  dentinMatrixSecretion : Prop
  mesenchymalCompaction : Prop
  runx2Expression : Prop
  dlx5Expression : Prop
  msx1Expression : Prop
  pax9Expression : Prop
  inductionSignals : Prop

structure DentalMesenchymeInductionEvidence (D : DentalMesenchymeInductionPackage) where
  odontoblastDifferentiationClosed : D.odontoblastDifferentiation
  dentinMatrixSecretionClosed : D.dentinMatrixSecretion
  mesenchymalCompactionClosed : D.mesenchymalCompaction
  runx2ExpressionClosed : D.runx2Expression
  dlx5ExpressionClosed : D.dlx5Expression
  msx1ExpressionClosed : D.msx1Expression
  pax9ExpressionClosed : D.pax9Expression
  inductionSignalsClosed : D.inductionSignals

def DentalMesenchymeInductionClosed (D : DentalMesenchymeInductionPackage) : Prop :=
  D.odontoblastDifferentiation ∧ D.dentinMatrixSecretion ∧
  D.mesenchymalCompaction ∧ D.runx2Expression ∧ D.dlx5Expression ∧
  D.msx1Expression ∧ D.pax9Expression ∧ D.inductionSignals

theorem dental_mesenchyme_induction_closed_from_evidence
    (D : DentalMesenchymeInductionPackage)
    (E : DentalMesenchymeInductionEvidence D) : DentalMesenchymeInductionClosed D := by
  exact And.intro E.odontoblastDifferentiationClosed
    (And.intro E.dentinMatrixSecretionClosed
      (And.intro E.mesenchymalCompactionClosed
        (And.intro E.runx2ExpressionClosed
          (And.intro E.dlx5ExpressionClosed
            (And.intro E.msx1ExpressionClosed
              (And.intro E.pax9ExpressionClosed E.inductionSignalsClosed))))))

end DevelopmentalBiologyToothDevelopmentCanonicalLaneLean
end HautevilleHouse