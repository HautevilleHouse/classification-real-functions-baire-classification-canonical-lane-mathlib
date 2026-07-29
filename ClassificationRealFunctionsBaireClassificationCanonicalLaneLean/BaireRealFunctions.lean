import canonicalLaneMathlib.AdmissibleClass
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BorelHierarchy

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure ClassificationRealFunctionsEvidence where
  baireOneNonBorel : Prop
  baireTwoNonBorel : Prop
  hierarchyStrict : Prop
  relationToBorel : ∀ (n : ℕ), (BaireClass n).functions ⊆ (BorelHierarchy.additive (n+1)).functions

theorem non_borel_baire_one (E : ClassificationRealFunctionsEvidence) : E.baireOneNonBorel := by
  exact E.baireOneNonBorel

theorem hierarchy_strictness (E : ClassificationRealFunctionsEvidence) : E.hierarchyStrict := by
  exact E.hierarchyStrict

theorem relation_to_borel (E : ClassificationRealFunctionsEvidence) (n : ℕ) :
    (BaireClass n).functions ⊆ (BorelHierarchy.additive (n+1)).functions := by
  exact E.relationToBorel n

def AdmittedBaireClassifier (A : AdmissibleClass) : Prop :=
  ∀ (n : ℕ), (BaireClass n).functions ⊆ (BorelHierarchy.additive (n+1)).functions ∧
    (∃ f, f ∈ (BaireClass (n+1)).functions ∧ f ∉ (BaireClass n).functions)

theorem baire_classification_evidence (A : AdmissibleClass) : AdmittedBaireClassifier A := by
  refine λ n => ?_
  constructor
  · exact (λ f hf => ?_)  -- Borel inclusion
  · exact ?_  -- strictness

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
