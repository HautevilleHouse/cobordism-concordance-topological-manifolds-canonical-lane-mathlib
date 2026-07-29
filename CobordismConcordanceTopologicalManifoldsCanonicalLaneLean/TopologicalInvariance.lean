import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsCanonicalLaneLean.ConcordanceClassification

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsCanonicalLaneLean

structure TopologicalInvariancePackage {C : CobordismPackage} {Cob : CobordismPackage}
    {Con : ConcordancePackage Cob} (Conc : ConcordancePackage Cob) where
  homotopyInvariant : Prop
  homeomorphismInvariant : Prop
  diffeomorphismInvariant : Prop
  signatureInvariant : Prop
  characteristicClassInvariant : Prop

structure TopologicalInvarianceEvidence {C : CobordismPackage} {Cob : CobordismPackage}
    {Con : ConcordancePackage Cob} (TI : TopologicalInvariancePackage Conc) where
  homotopyInvariantClosed : TI.homotopyInvariant
  homeomorphismInvariantClosed : TI.homeomorphismInvariant
  diffeomorphismInvariantClosed : TI.diffeomorphismInvariant
  signatureInvariantClosed : TI.signatureInvariant
  characteristicClassInvariantClosed : TI.characteristicClassInvariant

def TopologicalInvarianceClosed {C : CobordismPackage} {Cob : CobordismPackage}
    {Con : ConcordancePackage Cob} (TI : TopologicalInvariancePackage Conc) : Prop :=
  TI.homotopyInvariant ∧ TI.homeomorphismInvariant ∧
  TI.diffeomorphismInvariant ∧ TI.signatureInvariant ∧
  TI.characteristicClassInvariant

theorem topological_invariance_closed_from_evidence {C : CobordismPackage} {Cob : CobordismPackage}
    {Con : ConcordancePackage Cob} (TI : TopologicalInvariancePackage Conc)
    (E : TopologicalInvarianceEvidence TI) : TopologicalInvarianceClosed TI := by
  exact And.intro E.homotopyInvariantClosed
    (And.intro E.homeomorphismInvariantClosed
      (And.intro E.diffeomorphismInvariantClosed
        (And.intro E.signatureInvariantClosed
          E.characteristicClassInvariantClosed)))

end CobordismConcordanceTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
