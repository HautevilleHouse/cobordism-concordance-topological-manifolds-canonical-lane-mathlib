import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure TopologicalManifoldCategory where
  objects : Type u
  morphisms : Type v
  composition : morphisms → morphisms → morphisms
  identityMorphism : objects → morphisms
  categoryAxioms : Prop

structure TopologicalManifoldCategoryEvidence (C : TopologicalManifoldCategory) where
  categoryAxiomsClosed : C.categoryAxioms

def TopologicalManifoldCategoryClosed (C : TopologicalManifoldCategory) : Prop :=
  C.categoryAxioms

theorem topological_manifold_category_closed_from_evidence
    (C : TopologicalManifoldCategory) (E : TopologicalManifoldCategoryEvidence C) :
    TopologicalManifoldCategoryClosed C := by
  exact E.categoryAxiomsClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse