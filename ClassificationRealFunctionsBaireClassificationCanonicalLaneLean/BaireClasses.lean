import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireClass (α : Type u) [TopologicalSpace α] where
  classIndex : ℕ
  functions : Set (α → ℝ)
  closureProperty : Prop

structure BaireFunction where
  domain : Type u
  topology : TopologicalSpace domain
  codomain : Type v
  codomainTopology : TopologicalSpace codomain
  function : domain → codomain
  baireClass : ℕ
  isInBaireClass : Prop

structure BaireClassHierarchy (α : Type u) [TopologicalSpace α] where
  zero : BaireClass α
  one : BaireClass α
  inclusion : zero.functions ⊆ one.functions
  closureUnderPointwiseLimits : Prop

structure BaireMeasurableFunction (α : Type u) [TopologicalSpace α] (β : Type v) [TopologicalSpace β] where
  function : α → β
  isBaireMeasurable : Prop

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
