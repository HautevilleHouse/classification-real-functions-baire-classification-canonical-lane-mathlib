import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireCategory

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure FunctionalAnalyticFoundation where
  baireCategory : BaireCategoryTheorem
  baireClasses : BaireClassHierarchy
  separability : Prop
  separabilityTerm : separability
  baireClassEvidence : ∀ n : ℕ, ∀ f : ℕ → ℝ → ℝ, (∀ m, baireClasses.classes m).1.functions (f m) → 
    baireClasses.classes n.succ.functions (pointwiseLimit f)
  baireClassEvidenceTerm : baireClassEvidence

theorem functional_analytic_foundation_closed (F : FunctionalAnalyticFoundation) :
  (∀ n, ∀ f : ℕ → ℝ → ℝ, (∀ m, F.baireClasses.classes m).1.functions (f m) → 
    F.baireClasses.classes n.succ.functions (pointwiseLimit f)) :=
  F.baireClassEvidence

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse