import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure MartingaleConvergencePackage (A : AdmissibleClass) where
  filtration : Type u
  probabilityMeasure : Type v
  integrability : Prop
  almostSureConvergence : Prop
  boundednessCondition : Prop

structure MartingaleConvergenceEvidence {A : AdmissibleClass} (M : MartingaleConvergencePackage A) where
  integrabilityClosed : M.integrability
  almostSureConvergenceClosed : M.almostSureConvergence
  boundednessConditionClosed : M.boundednessCondition

def MartingaleConvergenceClosed {A : AdmissibleClass} (M : MartingaleConvergencePackage A) : Prop :=
  M.integrability ∧ M.almostSureConvergence ∧ M.boundednessCondition

theorem martingale_convergence_closed_from_evidence
    {A : AdmissibleClass} (M : MartingaleConvergencePackage A) (E : MartingaleConvergenceEvidence M) :
    MartingaleConvergenceClosed M := by
  exact And.intro E.integrabilityClosed (And.intro E.almostSureConvergenceClosed E.boundednessConditionClosed)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse