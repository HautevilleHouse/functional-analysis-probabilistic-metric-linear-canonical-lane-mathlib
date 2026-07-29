import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure RandomProcessPackage where
  samplePathContinuity : Prop
  finiteDimensionalDistributions : Prop
  kolmogorovConsistency : Prop

structure RandomProcessEvidence (R : RandomProcessPackage) where
  samplePathContinuityClosed : R.samplePathContinuity
  finiteDimensionalDistributionsClosed : R.finiteDimensionalDistributions
  kolmogorovConsistencyClosed : R.kolmogorovConsistency

def RandomProcessClosed (R : RandomProcessPackage) : Prop :=
  R.samplePathContinuity ∧ R.finiteDimensionalDistributions ∧ R.kolmogorovConsistency

theorem random_process_closed_from_evidence
    (R : RandomProcessPackage) (E : RandomProcessEvidence R) :
    RandomProcessClosed R := by
  exact And.intro E.samplePathContinuityClosed (And.intro E.finiteDimensionalDistributionsClosed E.kolmogorovConsistencyClosed)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse