import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentCanonicalLaneLean

def ConstrainedToothDevelopmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tooth_development_endgame (A : AdmissibleClass) :
    ConstrainedToothDevelopmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyToothDevelopmentCanonicalLaneLean
end HautevilleHouse