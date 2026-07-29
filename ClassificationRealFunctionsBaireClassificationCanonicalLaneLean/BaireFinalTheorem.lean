import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireSeparation
import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

def ConstrainedBaireClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_baire_endgame (A : AdmissibleClass) :
    ConstrainedBaireClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
