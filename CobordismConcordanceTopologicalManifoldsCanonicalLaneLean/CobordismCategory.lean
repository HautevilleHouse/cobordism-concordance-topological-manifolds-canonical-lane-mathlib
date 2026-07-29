import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismCategory where
  dimension : ℕ
  sourceManifoldType : Type u
  targetManifoldType : Type v
  cobordism : Type w
  compositionDefined : Prop
  identityCobordism : Prop
  associativitySatisfied : Prop

structure CobordismCategoryEvidence (C : CobordismCategory) where
  compositionDefinedClosed : C.compositionDefined
  identityCobordismClosed : C.identityCobordism
  associativitySatisfiedClosed : C.associativitySatisfied

def CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.compositionDefined ∧ C.identityCobordism ∧ C.associativitySatisfied

theorem cobordism_category_closed_from_evidence (C : CobordismCategory)
    (E : CobordismCategoryEvidence C) : CobordismCategoryClosed C := by
  exact And.intro E.compositionDefinedClosed
    (And.intro E.identityCobordismClosed E.associativitySatisfiedClosed)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse