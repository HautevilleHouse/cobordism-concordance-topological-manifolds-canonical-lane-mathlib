import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Nat
  closedConnectedOriented : Prop
  cobordismClass : Type v
  classificationConclusion : cobordismClass ≃ Fin 1
  conclusion : classificationConclusion

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  Nonempty O.classificationConclusion

