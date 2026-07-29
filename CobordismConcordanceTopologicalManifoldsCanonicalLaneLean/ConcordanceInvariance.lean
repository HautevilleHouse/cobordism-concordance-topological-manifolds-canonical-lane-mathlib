import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure ConcordanceBetween (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  cylinder : Type
  topology : TopologicalSpace cylinder
  embedding : M × ℝ → cylinder
  boundaryConditions : embedding (M × {0}) ≃ M ∧ embedding (M × {1}) ≃ N

structure ConcordanceEquivalence (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  forward : ConcordanceBetween M N
  backward : ConcordanceBetween N M

structure ConcordanceInvariancePackage where
  sourceManifold : Type
  targetManifold : Type
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  concordanceExists : Prop
  hCobordismImpliesConcordance : Prop
  concordanceImpliesCobordism : Prop
  concordanceEquivalenceRelation : Prop

structure ConcordanceInvarianceEvidence (P : ConcordanceInvariancePackage) where
  concordanceExistsClosed : P.concordanceExists
  hCobordismImpliesConcordanceClosed : P.hCobordismImpliesConcordance
  concordanceImpliesCobordismClosed : P.concordanceImpliesCobordism
  concordanceEquivalenceRelationClosed : P.concordanceEquivalenceRelation

def ConcordanceInvarianceClosed (P : ConcordanceInvariancePackage) : Prop :=
  P.concordanceExists ∧ P.hCobordismImpliesConcordance ∧ P.concordanceImpliesCobordism ∧ P.concordanceEquivalenceRelation

theorem concordance_invariance_closed_from_evidence (P : ConcordanceInvariancePackage) (E : ConcordanceInvarianceEvidence P) : ConcordanceInvarianceClosed P := by
  exact And.intro E.concordanceExistsClosed (And.intro E.hCobordismImpliesConcordanceClosed (And.intro E.concordanceImpliesCobordismClosed E.concordanceEquivalenceRelationClosed))

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse