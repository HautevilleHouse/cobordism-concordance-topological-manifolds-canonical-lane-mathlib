import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.CobordismRing
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.ConcordanceInvariance

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismClassificationPackage where
  dimension : ℕ
  objectType : Type
  relation : objectType → objectType → Prop
  hasClassification : Prop
  classificationData : Type
  cobordismInvariant : objectType → classificationData
  classificationTheorem : ∀ (A B : objectType), relation A B ↔ (cobordismInvariant A = cobordismInvariant B)

structure PontryaginThomConstruction extends CobordismClassificationPackage where
  homotopyGroup : ℕ → Type
  thomSpace : ℕ → Type
  isomorphism : ∀ n : ℕ, classificationData ≃ homotopyGroup n

structure CobordismClassificationEvidence (P : CobordismClassificationPackage) where
  hasClassificationClosed : P.hasClassification
  classificationTheoremClosed : ∀ (A B : P.objectType), P.relation A B ↔ (P.cobordismInvariant A = P.cobordismInvariant B)

def CobordismClassificationClosed (P : CobordismClassificationPackage) : Prop :=
  P.hasClassification ∧ (∀ (A B : P.objectType), P.relation A B ↔ (P.cobordismInvariant A = P.cobordismInvariant B))

theorem cobordism_classification_closed_from_evidence (P : CobordismClassificationPackage) (E : CobordismClassificationEvidence P) : CobordismClassificationClosed P := by
  exact And.intro E.hasClassificationClosed E.classificationTheoremClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse