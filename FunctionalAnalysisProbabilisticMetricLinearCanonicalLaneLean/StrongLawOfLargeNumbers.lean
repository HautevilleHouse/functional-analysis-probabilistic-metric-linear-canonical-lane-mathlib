import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure StrongLawOfLargeNumbers where
  iidSequence : ℕ → (Type u → ℝ)
  sampleMean : ℕ → (Type u → ℝ)
  expectationFinite : Prop
  almostSureConvergence : Prop

def StrongLawClosed (S : StrongLawOfLargeNumbers) : Prop :=
  S.expectationFinite ∧ S.almostSureConvergence

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse