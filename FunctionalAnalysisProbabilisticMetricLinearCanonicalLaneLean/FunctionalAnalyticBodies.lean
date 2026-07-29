import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  completeness : CauchyComplete carrier

def BanachSpaceClosed (B : BanachSpace) : Prop :=
  B.completeness

theorem banach_space_closed_from_completeness (B : BanachSpace) : BanachSpaceClosed B := by
  exact B.completeness

structure HilbertSpace where
  carrier : Type u
  inner : carrier → carrier → ℝ
  completeness : CauchyComplete carrier

def HilbertSpaceClosed (H : HilbertSpace) : Prop :=
  H.completeness

theorem hilbert_space_closed_from_completeness (H : HilbertSpace) : HilbertSpaceClosed H := by
  exact H.completeness

structure LinearOperator (X Y : Type u) [BanachSpace X] [BanachSpace Y] where
  f : X → Y
  linearity : IsLinearMap f
  boundedness : ∃ C, ∀ x, ∥f x∥ ≤ C * ∥x∥

def LinearOperatorClosed (L : LinearOperator X Y) : Prop :=
  L.linearity ∧ L.boundedness

theorem linear_operator_closed_from_properties (L : LinearOperator X Y) : LinearOperatorClosed L := by
  exact And.intro L.linearity L.boundedness

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse