import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean

structure DoobInequalityPackage where
  martingaleProcess : Type u
  submartingaleProperty : Prop
  stoppingTime : Type v
  inequalityStatement : Prop
  maximalInequality : Prop
  lpBounds : Prop
  structureProof : Prop

structure DoobInequalityEvidence (D : DoobInequalityPackage) where
  submartingalePropertyClosed : D.submartingaleProperty
  inequalityStatementClosed : D.inequalityStatement
  maximalInequalityClosed : D.maximalInequality
  lpBoundsClosed : D.lpBounds
  structureProofClosed : D.structureProof

def DoobInequalityClosed (D : DoobInequalityPackage) : Prop :=
  D.submartingaleProperty ∧ D.inequalityStatement ∧
  D.maximalInequality ∧ D.lpBounds ∧ D.structureProof

theorem doob_inequality_closed_from_evidence
    (D : DoobInequalityPackage) (E : DoobInequalityEvidence D) :
    DoobInequalityClosed D := by
  exact And.intro E.submartingalePropertyClosed
    (And.intro E.inequalityStatementClosed
      (And.intro E.maximalInequalityClosed
        (And.intro E.lpBoundsClosed E.structureProofClosed)))

end FunctionalAnalysisProbabilisticMetricLinearCanonicalLaneLean
end HautevilleHouse
