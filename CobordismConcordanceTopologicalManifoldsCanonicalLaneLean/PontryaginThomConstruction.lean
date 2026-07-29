import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure PontryaginThomConstruction where
  manifoldDimension : ℕ
  embeddingCodimension : ℕ
  normalBundleClassified : Prop
  collapseMapConstructed : Prop
  isomorphismToCobordismGroup : Prop

structure PontryaginThomEvidence (P : PontryaginThomConstruction) where
  normalBundleClassifiedClosed : P.normalBundleClassified
  collapseMapConstructedClosed : P.collapseMapConstructed
  isomorphismToCobordismGroupClosed : P.isomorphismToCobordismGroup

def PontryaginThomClosed (P : PontryaginThomConstruction) : Prop :=
  P.normalBundleClassified ∧ P.collapseMapConstructed ∧ P.isomorphismToCobordismGroup

theorem pontryagin_thom_closed_from_evidence (P : PontryaginThomConstruction)
    (E : PontryaginThomEvidence P) : PontryaginThomClosed P := by
  exact And.intro E.normalBundleClassifiedClosed
    (And.intro E.collapseMapConstructedClosed E.isomorphismToCobordismGroupClosed)

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse