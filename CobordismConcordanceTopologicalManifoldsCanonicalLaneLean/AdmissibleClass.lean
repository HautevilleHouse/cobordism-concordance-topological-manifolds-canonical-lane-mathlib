import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : CobordismConcordanceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CobordismConcordanceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse