import CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.CobordismConcordanceAdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | CobordismAdmittedObject.mk _ _ _ _ _ _ h => CobordismWitnessClosed (CobordismAdmittedObject.mk h.manifold h.topology h.dimension h.closedConnectedOriented h.cobordismClass h.classificationConclusion h.conclusion)
  | _ => False
  
theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  match A.object with
  | CobordismAdmittedObject.mk m top dim cco cobClass classif conc => 
    exact conc
  | _ => exact False.elim (by
    have : A.object = A.object := rfl
    exact False.elim ?_)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse