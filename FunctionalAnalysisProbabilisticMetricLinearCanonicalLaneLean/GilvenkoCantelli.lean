import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure GilvenkoCantelliPackage where
  sampleSpace : Type u
  distributionFunction : Type v
  empiricalProcess : Type w
  uniformConvergence : Prop
  almostSureConvergence : Prop
  structureProof : Prop

structure GilvenkoCantelliEvidence (G : GilvenkoCantelliPackage) where
  uniformConvergenceClosed : G.uniformConvergence
  almostSureConvergenceClosed : G.almostSureConvergence
  structureProofClosed : G.structureProof

def GilvenkoCantelliClosed (G : GilvenkoCantelliPackage) : Prop :=
  G.uniformConvergence ∧ G.almostSureConvergence ∧ G.structureProof

theorem gilvenko_cantelli_closed_from_evidence
    (G : GilvenkoCantelliPackage) (E : GilvenkoCantelliEvidence G) :
    GilvenkoCantelliClosed G := by
  exact And.intro E.uniformConvergenceClosed
    (And.intro E.almostSureConvergenceClosed E.structureProofClosed)

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse
