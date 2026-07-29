import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure ProbabilityTriple where
  Ω : Type u
  F : Set (Set Ω)
  P : Set Ω → ℝ
  measurableSpace : MeasurableSpace Ω
  probabilityMeasure : MeasureTheory.ProbabilityMeasure Ω
  probabilityMeasureCompatible : ProbabilityMeasure.toMeasure = P

def ProbabilisticMetricSpace (X : Type u) [MeasurableSpace X] := Set (ProbabilityTriple × X → ℝ)

structure ProbabilisticMetric where
  carrier : Type u
  measurableCarrier : MeasurableSpace carrier
  distance : carrier → carrier → ℝ
  measurabilityDistance : Measurable (uncurry distance)
  positivity : ∀ x y, distance x y ≥ 0
  symmetry : ∀ x y, distance x y = distance y x
  triangle : ∀ x y z, distance x z ≤ distance x y + distance y z

def ProbabilisticMetricClosed (M : ProbabilisticMetric) : Prop :=
  M.positivity ∧ M.symmetry ∧ M.triangle

theorem probabilistic_metric_closed_from_properties (M : ProbabilisticMetric) : ProbabilisticMetricClosed M := by
  exact And.intro M.positivity (And.intro M.symmetry M.triangle)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse