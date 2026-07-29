import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure GaussianProcess where
  indexSet : Type u
  meanFunction : indexSet → ℝ
  covarianceKernel : indexSet → indexSet → ℝ
  finiteDimensionalConsistency : Prop
  pathRegularity : Prop

def GaussianProcessClosed (G : GaussianProcess) : Prop :=
  G.finiteDimensionalConsistency ∧ G.pathRegularity

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse