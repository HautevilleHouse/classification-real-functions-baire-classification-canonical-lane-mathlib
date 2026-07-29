import canonicalLaneMathlib.AdmissibleClass
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClassesPackage

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BorelMeasurableBridgePackage (P : BaireClassesPackage) where
  baireImpliesBorel : ∀ (f : P.X → ℝ), f ∈ P.alphaClass → Measurable f
  borelImpliesBaire : Prop
  borelSigmaAlgebra : MeasurableSpace P.X
  bridgeClosed : Prop
  bridgeEvidence : bridgeClosed

structure BorelMeasurableBridgeEvidence {P : BaireClassesPackage} (B : BorelMeasurableBridgePackage P) where
  baireImpliesBorelClosed : B.baireImpliesBorel
  borelImpliesBaireClosed : B.borelImpliesBaire
  bridgeClosed : B.bridgeClosed

def BorelMeasurableBridgeClosed {P : BaireClassesPackage} (B : BorelMeasurableBridgePackage P) : Prop :=
  B.baireImpliesBorel ∧ B.borelImpliesBaire ∧ B.bridgeClosed

theorem borel_measurable_bridge_closed_from_evidence {P : BaireClassesPackage} (B : BorelMeasurableBridgePackage P) (E : BorelMeasurableBridgeEvidence B) :
    BorelMeasurableBridgeClosed B := by
  exact And.intro E.baireImpliesBorelClosed (And.intro E.borelImpliesBaireClosed E.bridgeClosed)

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse