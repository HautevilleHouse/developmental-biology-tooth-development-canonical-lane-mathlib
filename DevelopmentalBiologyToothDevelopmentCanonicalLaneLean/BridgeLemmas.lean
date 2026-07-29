import HautevilleHouse.DevelopmentalBiologyToothDevelopmentCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ToothDevelopmentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyToothDevelopmentCanonicalLaneLean
end HautevilleHouse