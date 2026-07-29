import canonicalLaneMathlib.AdmissibleClass
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BorelHierarchy where
  additive : ℕ → BorelMeasurableFunctions
  multiplicative : ℕ → BorelMeasurableFunctions
  inclusionAdditive : ∀ n, (additive n).functions ⊆ (multiplicative n).functions
  inclusionMultiplicative : ∀ n, (multiplicative n).functions ⊆ (additive (n+1)).functions
  unionAll : (⋃ n, (additive n).functions) = (⋃ n, (multiplicative n).functions)

def baireClassInBorel (n : ℕ) (B : BorelHierarchy) (A : BaireClass n) : Prop :=
  A.functions ⊆ (B.additive (n+1)).functions

theorem baire_contained_in_borel (n : ℕ) (B : BorelHierarchy) (A : BaireClass n) :
    baireClassInBorel n B A := by
  intro f hf
  apply Set.mem_of_subset_of_mem ?_ hf
  -- placeholder for actual proof
  sorry

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
