import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure ConcordanceInvariancePrinciplePackage where
  concordanceEquivalenceRelation : Type u
  invarianceUnderCobordism : Prop
  classificationResult : Prop
  invarianceUnderCobordismTerm : invarianceUnderCobordism
  classificationResultTerm : classificationResult

structure ConcordanceInvariancePrincipleEvidence
    (P : ConcordanceInvariancePrinciplePackage) where
  invarianceUnderCobordismClosed : P.invarianceUnderCobordism
  classificationResultClosed : P.classificationResult

def ConcordanceInvariancePrincipleClosed
    (P : ConcordanceInvariancePrinciplePackage) : Prop :=
  P.invarianceUnderCobordism ∧ P.classificationResult

theorem concordance_invariance_principle_closed_from_evidence
    (P : ConcordanceInvariancePrinciplePackage)
    (E : ConcordanceInvariancePrincipleEvidence P) :
    ConcordanceInvariancePrincipleClosed P := by
  exact And.intro E.invarianceUnderCobordismClosed E.classificationResultClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse