import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure ProbabilityMetricSpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : (carrier -> Set carrier -> ℝ) 
  metric : carrier -> carrier -> ℝ
  probabilityMeasureProperties : Prop
  metricProperties : Prop
  compatibility : Prop

structure ProbabilityMetricSpaceEvidence (M : ProbabilityMetricSpace) where
  probabilityMeasureClosed : M.probabilityMeasureProperties
  metricClosed : M.metricProperties
  compatibilityClosed : M.compatibility

def ProbabilityMetricSpaceClosed (M : ProbabilityMetricSpace) : Prop :=
  M.probabilityMeasureProperties ∧ M.metricProperties ∧ M.compatibility

theorem probability_metric_space_closed_from_evidence
    (M : ProbabilityMetricSpace) (E : ProbabilityMetricSpaceEvidence M) :
    ProbabilityMetricSpaceClosed M := by
  exact And.intro E.probabilityMeasureClosed (And.intro E.metricClosed E.compatibilityClosed)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse
