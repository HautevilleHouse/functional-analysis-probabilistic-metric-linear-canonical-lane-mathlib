import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure StochasticIntegral where
  underlyingProcess : Type u
  integrator : underlyingProcess → ℝ
  integrand : underlyingProcess → ℝ
  integralExists : Prop
  isometryProperty : Prop

def StochasticIntegralClosed (I : StochasticIntegral) : Prop :=
  I.integralExists ∧ I.isometryProperty

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse