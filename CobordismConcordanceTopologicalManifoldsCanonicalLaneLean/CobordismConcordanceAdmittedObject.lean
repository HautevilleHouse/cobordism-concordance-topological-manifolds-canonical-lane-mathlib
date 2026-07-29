import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismConcordanceAdmittedObject where
  manifold : Type u
  topologicalStructure : TopologicalSpace manifold
  manifoldDimension : ℕ
  classificationCompleted : Prop
  concordanceClassGroup : Type v
  conclusion : classificationCompleted

def CobordismConcordanceWitnessClosed (O : CobordismConcordanceAdmittedObject) : Prop :=
  O.classificationCompleted

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse