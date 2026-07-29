import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure StochasticCalculusPackage (A : AdmissibleClass) where
  stochasticIntegral : Type u
  itoFormula : Prop
  quadraticVariation : Prop
  martingaleRepresentation : Prop

structure StochasticCalculusEvidence {A : AdmissibleClass} (S : StochasticCalculusPackage A) where
  stochasticIntegralClosed : S.stochasticIntegral
  itoFormulaClosed : S.itoFormula
  quadraticVariationClosed : S.quadraticVariation
  martingaleRepresentationClosed : S.martingaleRepresentation

def StochasticCalculusClosed {A : AdmissibleClass} (S : StochasticCalculusPackage A) : Prop :=
  S.stochasticIntegral ∧ S.itoFormula ∧ S.quadraticVariation ∧ S.martingaleRepresentation

theorem stochastic_calculus_closed_from_evidence
    {A : AdmissibleClass} (S : StochasticCalculusPackage A) (E : StochasticCalculusEvidence S) :
    StochasticCalculusClosed S := by
  exact And.intro E.stochasticIntegralClosed (And.intro E.itoFormulaClosed (And.intro E.quadraticVariationClosed E.martingaleRepresentationClosed))

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse