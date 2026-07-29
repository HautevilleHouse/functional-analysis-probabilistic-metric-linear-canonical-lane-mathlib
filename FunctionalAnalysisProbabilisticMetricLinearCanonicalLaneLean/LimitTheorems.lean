import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure LimitTheoremsPackage (A : AdmissibleClass) where
  lawOfLargeNumbers : Prop
  centralLimitTheorem : Prop
  largeDeviations : Prop
  functionalConvergence : Prop

structure LimitTheoremsEvidence {A : AdmissibleClass} (L : LimitTheoremsPackage A) where
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers
  centralLimitTheoremClosed : L.centralLimitTheorem
  largeDeviationsClosed : L.largeDeviations
  functionalConvergenceClosed : L.functionalConvergence

def LimitTheoremsClosed {A : AdmissibleClass} (L : LimitTheoremsPackage A) : Prop :=
  L.lawOfLargeNumbers ∧ L.centralLimitTheorem ∧ L.largeDeviations ∧ L.functionalConvergence

theorem limit_theorems_closed_from_evidence
    {A : AdmissibleClass} (L : LimitTheoremsPackage A) (E : LimitTheoremsEvidence L) :
    LimitTheoremsClosed L := by
  exact And.intro E.lawOfLargeNumbersClosed (And.intro E.centralLimitTheoremClosed (And.intro E.largeDeviationsClosed E.functionalConvergenceClosed))

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse