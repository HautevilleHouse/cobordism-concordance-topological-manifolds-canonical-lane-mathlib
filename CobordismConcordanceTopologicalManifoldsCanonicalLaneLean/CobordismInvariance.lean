import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismInvariance where
  invariantType : Type u
  domainCategory : CobordismCategory
  assignment : Type v
  cobordismInvariant : Prop
  diffeomorphismInvariant : Prop
  additivityUnderComposition : Prop

structure CobordismInvarianceEvidence (I : CobordismInvariance) where
  cobordismInvariantClosed : I.cobordismInvariant
  diffeomorphismInvariantClosed : I.diffeomorphismInvariant
  additivityUnderCompositionClosed : I.additivityUnderComposition

def CobordismInvarianceClosed (I : CobordismInvariance) : Prop :=
  I.cobordismInvariant ∧ I.diffeomorphismInvariant ∧ I.additivityUnderComposition

theorem cobordism_invariance_closed_from_evidence (I : CobordismInvariance)
    (E : CobordismInvarianceEvidence I) : CobordismInvarianceClosed I := by
  exact And.intro E.cobordismInvariantClosed
    (And.intro E.diffeomorphismInvariantClosed E.additivityUnderCompositionClosed)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse