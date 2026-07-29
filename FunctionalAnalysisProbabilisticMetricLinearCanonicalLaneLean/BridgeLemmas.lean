import FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FunctionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse