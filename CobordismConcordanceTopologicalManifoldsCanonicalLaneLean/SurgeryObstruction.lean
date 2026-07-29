import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure SurgeryObstruction where
  targetDimension : ℕ
  homologyType : Type u
  obstructionGroup : Type v
  obstructionClass : obstructionGroup
  vanishingImpliesSurgery : Prop
  vanishingImpliesCobordism : Prop

structure SurgeryObstructionEvidence (S : SurgeryObstruction) where
  vanishingImpliesSurgeryClosed : S.vanishingImpliesSurgery
  vanishingImpliesCobordismClosed : S.vanishingImpliesCobordism

def SurgeryObstructionClosed (S : SurgeryObstruction) : Prop :=
  S.vanishingImpliesSurgery ∧ S.vanishingImpliesCobordism

theorem surgery_obstruction_closed_from_evidence (S : SurgeryObstruction)
    (E : SurgeryObstructionEvidence S) : SurgeryObstructionClosed S := by
  exact And.intro E.vanishingImpliesSurgeryClosed E.vanishingImpliesCobordismClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse