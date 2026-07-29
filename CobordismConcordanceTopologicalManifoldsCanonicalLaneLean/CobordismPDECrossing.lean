import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismPDEProductPackage where
  crossingManifold : Type u
  crossingTopology : TopologicalSpace crossingManifold
  pdeSystem : Type v
  cobordismConsistency : Prop
  solutionSpace : Type w
  dimensionAgreement : Prop
  cobordismConsistencyTerm : cobordismConsistency
  dimensionAgreementTerm : dimensionAgreement

structure CobordismPDEProductEvidence (P : CobordismPDEProductPackage) where
  cobordismConsistencyClosed : P.cobordismConsistency
  dimensionAgreementClosed : P.dimensionAgreement

def CobordismPDEProductClosed (P : CobordismPDEProductPackage) : Prop :=
  P.cobordismConsistency ∧ P.dimensionAgreement

theorem cobordism_pde_product_closed_from_evidence
    (P : CobordismPDEProductPackage) (E : CobordismPDEProductEvidence P) :
    CobordismPDEProductClosed P := by
  exact And.intro E.cobordismConsistencyClosed E.dimensionAgreementClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse