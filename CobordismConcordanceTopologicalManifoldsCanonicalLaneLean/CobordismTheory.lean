import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  cobordismManifold : Type w
  cobordismTopology : TopologicalSpace cobordismManifold
  boundarySource : cobordismManifold → Prop
  boundaryTarget : cobordismManifold → Prop
  sourceEmbedding : sourceManifold → cobordismManifold
  targetEmbedding : targetManifold → cobordismManifold
  boundaryDecomposition : Prop
  cobordismSmooth : Prop

structure CobordismEvidence (C : CobordismPackage) where
  boundaryDecompositionClosed : C.boundaryDecomposition
  cobordismSmoothClosed : C.cobordismSmooth

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.boundaryDecomposition ∧ C.cobordismSmooth

theorem cobordism_closed_from_evidence (C : CobordismPackage) (E : CobordismEvidence C) :
    CobordismClosed C := by
  exact And.intro E.boundaryDecompositionClosed E.cobordismSmoothClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
