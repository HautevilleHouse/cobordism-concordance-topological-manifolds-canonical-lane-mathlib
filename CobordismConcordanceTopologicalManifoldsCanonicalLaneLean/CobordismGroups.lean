import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismGroup (n : ℕ) where
  manifoldClass : Type u
  cobordismRelation : manifoldClass → manifoldClass → Prop
  groupOperation : manifoldClass → manifoldClass → manifoldClass
  identityElement : manifoldClass
  inverseElement : manifoldClass → manifoldClass
  groupAxioms : Prop

structure CobordismGroupEvidence {n : ℕ} (G : CobordismGroup n) where
  groupAxiomsClosed : G.groupAxioms

def CobordismGroupClosed {n : ℕ} (G : CobordismGroup n) : Prop :=
  G.groupAxioms

theorem cobordism_group_closed_from_evidence
    {n : ℕ} (G : CobordismGroup n) (E : CobordismGroupEvidence G) : CobordismGroupClosed G := by
  exact E.groupAxiomsClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse