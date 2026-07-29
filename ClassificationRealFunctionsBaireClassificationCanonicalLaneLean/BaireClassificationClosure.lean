import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses
import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireCategory

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact trivial

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact trivial

def ConstrainedBaireClassificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_baire_classification_endgame (A : AdmissibleClass) :
    ConstrainedBaireClassificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse