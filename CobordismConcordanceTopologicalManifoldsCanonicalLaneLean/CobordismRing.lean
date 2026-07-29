import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure CobordismRing where
  dimension : ℕ
  ring : Type
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  additiveGroup : Group ring
  multiplicativeMonoid : Monoid ring
  distributivity : ∀ a b c : ring, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)

structure UnorientedCobordismRing extends CobordismRing where
  classifyingSpace : Type
  topology : TopologicalSpace classifyingSpace
  thomSpectrum : Type

structure OrientedCobordismRing extends CobordismRing where
  orientationDoubleCover : coveringSpace (classifyingSpace)

structure CobordismRingEvidence (R : CobordismRing) where
  dimensionClosed : R.dimension = 0
  additionClosed : ∀ a b : R.ring, R.addition a b = a + b
  multiplicationClosed : ∀ a b : R.ring, R.multiplication a b = a * b
  zeroClosed : R.zero = 0
  oneClosed : R.one = 1

def CobordismRingClosed (R : CobordismRing) : Prop :=
  R.dimension = 0 ∧ (∀ a b : R.ring, R.addition a b = a + b) ∧ (∀ a b : R.ring, R.multiplication a b = a * b) ∧ R.zero = 0 ∧ R.one = 1

theorem cobordism_ring_closed_from_evidence (R : CobordismRing) (E : CobordismRingEvidence R) : CobordismRingClosed R := by
  exact And.intro E.dimensionClosed (And.intro E.additionClosed (And.intro E.multiplicationClosed (And.intro E.zeroClosed E.oneClosed)))

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse