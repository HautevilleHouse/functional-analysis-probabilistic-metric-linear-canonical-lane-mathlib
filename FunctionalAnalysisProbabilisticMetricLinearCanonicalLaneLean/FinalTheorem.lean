import FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

def ConstrainedFunctionalAnalysisProbabilisticMetricLinearClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_analysis_probabilistic_metric_linear_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalAnalysisProbabilisticMetricLinearClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse