import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismFundamentalGroupPackage where
  basepoint : Type u
  loopSpace : Type v
  fundamentalGroup : Type w
  groupOperationsClosed : Prop
  relationToConcordance : Prop
  groupOperationsClosedTerm : groupOperationsClosed
  relationToConcordanceTerm : relationToConcordance

structure CobordismFundamentalGroupEvidence (G : CobordismFundamentalGroupPackage) where
  groupOperationsClosedClosed : G.groupOperationsClosed
  relationToConcordanceClosed : G.relationToConcordance

def CobordismFundamentalGroupClosed (G : CobordismFundamentalGroupPackage) : Prop :=
  G.groupOperationsClosed ∧ G.relationToConcordance

theorem cobordism_fundamental_group_closed_from_evidence
    (G : CobordismFundamentalGroupPackage) (E : CobordismFundamentalGroupEvidence G) :
    CobordismFundamentalGroupClosed G := by
  exact And.intro E.groupOperationsClosedClosed E.relationToConcordanceClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse