import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentCanonicalLaneLean

structure CellSignalingPathwaysPackage where
  fgfSignaling : Prop
  bmpSignaling : Prop
  shhSignaling : Prop
  wntSignaling : Prop
  edaSignaling : Prop
  notchSignaling : Prop
  signalingIntegration : Prop

structure CellSignalingPathwaysEvidence (C : CellSignalingPathwaysPackage) where
  fgfSignalingClosed : C.fgfSignaling
  bmpSignalingClosed : C.bmpSignaling
  shhSignalingClosed : C.shhSignaling
  wntSignalingClosed : C.wntSignaling
  edaSignalingClosed : C.edaSignaling
  notchSignalingClosed : C.notchSignaling
  signalingIntegrationClosed : C.signalingIntegration

def CellSignalingPathwaysClosed (C : CellSignalingPathwaysPackage) : Prop :=
  C.fgfSignaling ∧ C.bmpSignaling ∧ C.shhSignaling ∧ C.wntSignaling ∧
  C.edaSignaling ∧ C.notchSignaling ∧ C.signalingIntegration

theorem cell_signaling_pathways_closed_from_evidence (C : CellSignalingPathwaysPackage)
    (E : CellSignalingPathwaysEvidence C) : CellSignalingPathwaysClosed C := by
  exact And.intro E.fgfSignalingClosed
    (And.intro E.bmpSignalingClosed
      (And.intro E.shhSignalingClosed
        (And.intro E.wntSignalingClosed
          (And.intro E.edaSignalingClosed
            (And.intro E.notchSignalingClosed E.signalingIntegrationClosed)))))

end DevelopmentalBiologyToothDevelopmentCanonicalLaneLean
end HautevilleHouse