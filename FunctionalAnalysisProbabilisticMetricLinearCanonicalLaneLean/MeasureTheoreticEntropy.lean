import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure MeasureTheoreticEntropy where
  probabilitySpace : Type u
  sigmaAlgebra : Set (Set (probabilitySpace))
  measure : probabilitySpace → ℝ
  entropyFunctional : (probabilitySpace → ℝ) → ℝ
  convexityProperty : Prop
  monotonicityProperty : Prop

def MeasureTheoreticEntropyClosed (H : MeasureTheoreticEntropy) : Prop :=
  H.convexityProperty ∧ H.monotonicityProperty

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse