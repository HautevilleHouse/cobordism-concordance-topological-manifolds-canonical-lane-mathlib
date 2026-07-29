import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismObject where
  M : Type u
  N : Type v
  topM : TopologicalSpace M
  topN : TopologicalSpace N
  boundary : Set M → Prop
  cobordismExists : Prop

structure AdmittedCobordism where
  object : CobordismObject
  cobordismWitness : object.cobordismExists
  concordanceRecorded : Prop

def CobordismWitnessClosed (O : AdmittedCobordism) : Prop :=
  O.cobordismWitness

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse