import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CobordismConcordanceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse