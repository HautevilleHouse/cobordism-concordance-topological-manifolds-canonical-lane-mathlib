import CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.CobordismClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismGroupPackage where
  dimension : ℕ
  groupType : Type u
  addition : groupType → groupType → groupType
  zero : groupType
  inverse : groupType → groupType
  groupLaws : Prop

structure CobordismGroupEvidence (G : CobordismGroupPackage) where
  additionClosed : ∀ a b : G.groupType, G.addition a b = G.addition b a
  zeroClosed : ∀ a : G.groupType, G.addition a G.zero = a
  inverseClosed : ∀ a : G.groupType, G.addition a (G.inverse a) = G.zero

def CobordismGroupClosed (G : CobordismGroupPackage) : Prop :=
  G.groupLaws

theorem cobordism_group_closed_from_evidence (G : CobordismGroupPackage) (E : CobordismGroupEvidence G) :
    CobordismGroupClosed G := by
  exact E.additionClosed

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse