import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure RandomProcessesPackage (A : AdmissibleClass) where
  sampleContinuity : Prop
  stationarity : Prop
  ergodicity : Prop
  spectralRepresentation : Prop

structure RandomProcessesEvidence {A : AdmissibleClass} (R : RandomProcessesPackage A) where
  sampleContinuityClosed : R.sampleContinuity
  stationarityClosed : R.stationarity
  ergodicityClosed : R.ergodicity
  spectralRepresentationClosed : R.spectralRepresentation

def RandomProcessesClosed {A : AdmissibleClass} (R : RandomProcessesPackage A) : Prop :=
  R.sampleContinuity ∧ R.stationarity ∧ R.ergodicity ∧ R.spectralRepresentation

theorem random_processes_closed_from_evidence
    {A : AdmissibleClass} (R : RandomProcessesPackage A) (E : RandomProcessesEvidence R) :
    RandomProcessesClosed R := by
  exact And.intro E.sampleContinuityClosed (And.intro E.stationarityClosed (And.intro E.ergodicityClosed E.spectralRepresentationClosed))

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse