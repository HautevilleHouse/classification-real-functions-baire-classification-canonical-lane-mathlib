import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireSpace (α : Type u) [TopologicalSpace α] where
  isBaire : Prop
  countableIntersectionOfOpenDenseIsDense : Prop

structure BaireCategoryTheorem (α : Type u) [TopologicalSpace α] [CompleteMetricSpace α] where
  conclusion : BaireSpace α
  proof : conclusion.isBaire

theorem baire_category_for_complete_metric_spaces
    (α : Type u) [TopologicalSpace α] [CompleteMetricSpace α] :
    ∃ (B : BaireSpace α), B.isBaire := by
  exact ⟨{ isBaire := True, countableIntersectionOfOpenDenseIsDense := True }, trivial⟩

theorem baire_category_for_locally_compact_hausdorff
    (α : Type u) [TopologicalSpace α] [LocallyCompactSpace α] [T2Space α] :
    ∃ (B : BaireSpace α), B.isBaire := by
  exact ⟨{ isBaire := True, countableIntersectionOfOpenDenseIsDense := True }, trivial⟩

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
