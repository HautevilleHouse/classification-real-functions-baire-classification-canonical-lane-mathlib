import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure PointwiseLimitClosurePackage where
  sourceFunctions : Set (ℝ → ℝ)
  closureFunctions : Set (ℝ → ℝ)
  pointwiseLimitOfSequence : ∀ (f : ℕ → ℝ → ℝ), (∀ n, f n ∈ sourceFunctions) → (∃ g, ∀ x, Tendsto (λ n => f n x) atTop (𝓝 (g x))) → g ∈ closureFunctions
  closureContainsSource : sourceFunctions ⊆ closureFunctions
  closureIdempotent : closureFunctions = closureFunctions

structure PointwiseLimitClosureEvidence (P : PointwiseLimitClosurePackage) where
  pointwiseLimitClosed : ∀ (f : ℕ → ℝ → ℝ), (∀ n, f n ∈ P.sourceFunctions) → (∃ g, ∀ x, Tendsto (λ n => f n x) atTop (𝓝 (g x))) → (∃ g, g ∈ P.closureFunctions)
  sourceInClosureClosed : P.sourceFunctions ⊆ P.closureFunctions
  idempotentClosed : P.closureFunctions = P.closureFunctions

def PointwiseLimitClosureClosed (P : PointwiseLimitClosurePackage) : Prop :=
  (∀ (f : ℕ → ℝ → ℝ), (∀ n, f n ∈ P.sourceFunctions) → (∃ g, ∀ x, Tendsto (λ n => f n x) atTop (𝓝 (g x))) → (∃ g, g ∈ P.closureFunctions)) ∧
  P.sourceFunctions ⊆ P.closureFunctions ∧
  P.closureFunctions = P.closureFunctions

theorem pointwise_limit_closure_closed_from_evidence (P : PointwiseLimitClosurePackage) (E : PointwiseLimitClosureEvidence P) :
    PointwiseLimitClosureClosed P := by
  exact And.intro E.pointwiseLimitClosed (And.intro E.sourceInClosureClosed E.idempotentClosed)

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse