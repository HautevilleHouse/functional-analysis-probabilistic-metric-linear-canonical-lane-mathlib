import Mathlib.Probability.ProbabilityMassFunction

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure ProbabilitySpace where
  carrier : Type u
  sigmaAlgebra : MeasurableSpace carrier
  measure : MeasureTheory.Measure carrier
  isProbabilityMeasure : MeasureTheory.IsProbabilityMeasure measure

structure FunctionalWitness (Ω : ProbabilitySpace) where
  expectationWellDefined : Prop
  limitTheoremsHold : Prop
  martingaleConvergence : Prop
  conclusion : expectationWellDefined ∧ limitTheoremsHold ∧ martingaleConvergence

def FunctionalWitnessClosed (Ω : ProbabilitySpace) : Prop :=
  (∃ w : FunctionalWitness Ω, w.expectationWellDefined ∧ w.limitTheoremsHold ∧ w.martingaleConvergence)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse