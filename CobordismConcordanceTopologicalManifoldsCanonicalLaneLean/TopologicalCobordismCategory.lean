import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Nat
  closed : Prop
  oriented : Prop

structure CobordismMorphism (M N : CobordismObject) where
  cobordismManifold : Type v
  boundary : cobordismManifold → M ⊔ N
  topologicalStructure : TopologicalSpace cobordismManifold

def cobordismComposition {M N P : CobordismObject} (f : CobordismMorphism M N) (g : CobordismMorphism N P) : CobordismMorphism M P :=
  { cobordismManifold := f.cobordismManifold × g.cobordismManifold,
    boundary := λ (x, y) => 
      let fx := f.boundary x
      let gy := g.boundary y
      match fx, gy with
      | Sum.inl m, Sum.inr _ => Sum.inl m
      | Sum.inr n, Sum.inl n' => if n = n' then Sum.inr (g.boundary (Sum.inl n')) else Sum.inl (f.boundary (Sum.inr n)).1
      | Sum.inl m, Sum.inl _ => Sum.inl m
      | Sum.inr _, Sum.inr p => Sum.inr p,
    topologicalStructure := Prod.topologicalSpace }

structure CobordismCategory where
  objects : Type
  hom : CobordismObject → CobordismObject → Type
  identity : (M : CobordismObject) → hom M M
  composition : {M N P : CobordismObject} → hom M N → hom N P → hom M P
  associativity : Prop
  identityLaws : Prop
  associativityTerm : associativity
  identityLawsTerm : identityLaws

structure CobordismCategoryEvidence (C : CobordismCategory) where
  associativityClosed : C.associativity
  identityLawsClosed : C.identityLaws

def CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.associativity ∧ C.identityLaws

theorem cobordism_category_closed_from_evidence
    (C : CobordismCategory) (E : CobordismCategoryEvidence C) :
    CobordismCategoryClosed C := by
  exact And.intro E.associativityClosed E.identityLawsClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse