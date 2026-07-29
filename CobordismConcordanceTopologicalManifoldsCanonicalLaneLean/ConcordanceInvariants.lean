import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure ConcordanceInvariant where
  invariantType : Type u
  manifoldSpace : Type v
  invariant : manifoldSpace → invariantType
  concordanceInvariance : Prop

structure ConcordanceInvariantEvidence (I : ConcordanceInvariant) where
  concordanceInvarianceClosed : I.concordanceInvariance

def ConcordanceInvariantClosed (I : ConcordanceInvariant) : Prop :=
  I.concordanceInvariance

theorem concordance_invariant_closed_from_evidence
    (I : ConcordanceInvariant) (E : ConcordanceInvariantEvidence I) :
    ConcordanceInvariantClosed I := by
  exact E.concordanceInvarianceClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse