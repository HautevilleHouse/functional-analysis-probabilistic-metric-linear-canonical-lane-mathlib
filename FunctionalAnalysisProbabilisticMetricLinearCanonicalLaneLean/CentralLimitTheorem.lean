import FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean.ProbabilitySpace
import Mathlib.Probability.Distribution

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure CentralLimitTheoremPackage {Ω : ProbabilitySpace} where
  iidSamples : Prop
  sampleMeanDefined : Prop
  limitingNormalDistribution : Prop
  convergenceInDistribution : Prop

structure CentralLimitTheoremEvidence {Ω : ProbabilitySpace} (C : CentralLimitTheoremPackage Ω) where
  iidSamplesClosed : C.iidSamples
  sampleMeanDefinedClosed : C.sampleMeanDefined
  limitingNormalDistributionClosed : C.limitingNormalDistribution
  convergenceInDistributionClosed : C.convergenceInDistribution

def CentralLimitTheoremClosed {Ω : ProbabilitySpace} (C : CentralLimitTheoremPackage Ω) : Prop :=
  C.iidSamples ∧ C.sampleMeanDefined ∧ C.limitingNormalDistribution ∧ C.convergenceInDistribution

theorem central_limit_theorem_closed_from_evidence
    {Ω : ProbabilitySpace} (C : CentralLimitTheoremPackage Ω)
    (E : CentralLimitTheoremEvidence C) : CentralLimitTheoremClosed C := by
  exact And.intro E.iidSamplesClosed
    (And.intro E.sampleMeanDefinedClosed
      (And.intro E.limitingNormalDistributionClosed E.convergenceInDistributionClosed))

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse