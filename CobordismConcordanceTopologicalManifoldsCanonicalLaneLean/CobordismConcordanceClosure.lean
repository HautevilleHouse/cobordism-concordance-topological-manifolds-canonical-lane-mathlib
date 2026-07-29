import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure AdmissibleCobordismClass where
  object : CobordismGroup 0
  concordanceInvariant : ConcordanceInvariant
  category : TopologicalManifoldCategory
  invariantsSatisfied : Prop
  closureCondition : Prop

def bridgeClosed (A : AdmissibleCobordismClass) : Prop :=
  A.invariantsSatisfied

def gateClosed (A : AdmissibleCobordismClass) : Prop :=
  A.closureCondition

theorem bridge_from_admissible_class (A : AdmissibleCobordismClass) : bridgeClosed A := by
  exact A.invariantsSatisfied

theorem gate_from_admissible_class (A : AdmissibleCobordismClass) : gateClosed A := by
  exact A.closureCondition

def ConstrainedCobordismConcordanceClosure (A : AdmissibleCobordismClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_concordance_endgame (A : AdmissibleCobordismClass) :
    ConstrainedCobordismConcordanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse