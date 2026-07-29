import HautevilleHouse.DevelopmentalBiologyToothDevelopmentCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentCanonicalLaneLean

structure AdmissibleClass where
  object : ToothDevelopmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ToothDevelopmentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyToothDevelopmentCanonicalLaneLean
end HautevilleHouse