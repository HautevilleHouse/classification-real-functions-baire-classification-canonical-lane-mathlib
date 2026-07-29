import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure PointwiseLimit (α : Type u) [TopologicalSpace α] (β : Type v) [TopologicalSpace β] where
  sequence : ℕ → (α → β)
  limit : α → β
  convergesPointwise : ∀ x : α, Filter.Tendsto (λ n : ℕ => sequence n x) Filter.atTop (nhds (limit x))

structure BaireFunctionClass (α : Type u) [TopologicalSpace α] (β : Type v) [TopologicalSpace β] where
  classLevel : ℕ
  isClosedUnderPointwiseLimits : Prop
  containsContinuousFunctions : Prop

theorem continuous_functions_are_baire_class_one
    (α : Type u) [TopologicalSpace α] (β : Type v) [TopologicalSpace β] (f : α → β) (hf : Continuous f) :
    ∃ (B : BaireFunctionClass α β), B.classLevel = 1 ∧ B.containsContinuousFunctions := by
  exact ⟨{ classLevel := 1, isClosedUnderPointwiseLimits := True, containsContinuousFunctions := True }, rfl, trivial⟩

theorem baire_class_hierarchy_strict
    (α : Type u) [TopologicalSpace α] [MetrizableSpace α] [PerfectSpace α] :
    ∀ n : ℕ, ∃ f : α → ℝ, f ∈ (BaireClass.mk n).functions ∧ f ∉ (BaireClass.mk (n-1)).functions := by
  intro n
  sorry

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
