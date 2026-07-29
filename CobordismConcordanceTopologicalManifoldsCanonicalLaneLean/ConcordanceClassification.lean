import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.CobordismTheory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure ConcordancePackage {C : CobordismPackage} (Cob : CobordismPackage) where
  concordanceManifold : Type u
  concordanceTopology : TopologicalSpace concordanceManifold
  concordanceCylinder : Prop
  homotopyEquivalence : Prop
  concordanceRelationTransitive : Prop
  concordanceRelationSymmetric : Prop

structure ConcordanceEvidence {C : CobordismPackage} {Cob : CobordismPackage}
    (Con : ConcordancePackage Cob) where
  concordanceCylinderClosed : Con.concordanceCylinder
  homotopyEquivalenceClosed : Con.homotopyEquivalence
  concordanceRelationTransitiveClosed : Con.concordanceRelationTransitive
  concordanceRelationSymmetricClosed : Con.concordanceRelationSymmetric

def ConcordanceClosed {C : CobordismPackage} {Cob : CobordismPackage}
    (Con : ConcordancePackage Cob) : Prop :=
  Con.concordanceCylinder ∧ Con.homotopyEquivalence ∧
  Con.concordanceRelationTransitive ∧ Con.concordanceRelationSymmetric

theorem concordance_closed_from_evidence {C : CobordismPackage} {Cob : CobordismPackage}
    (Con : ConcordancePackage Cob) (E : ConcordanceEvidence Con) :
    ConcordanceClosed Con := by
  exact And.intro E.concordanceCylinderClosed
    (And.intro E.homotopyEquivalenceClosed
      (And.intro E.concordanceRelationTransitiveClosed
        E.concordanceRelationSymmetricClosed))

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
