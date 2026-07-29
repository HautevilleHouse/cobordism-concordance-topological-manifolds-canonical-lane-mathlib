import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.TopologicalInvariance

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

def ConstrainedCobordismConcordanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_concordance_endgame (A : AdmissibleClass) :
    ConstrainedCobordismConcordanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
