import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure FunctionSpaceType where
  carrier : Type u
  topology : TopologicalSpace carrier

definition BaireClassZero (X : Type u) [TopologicalSpace X] : Set (X → ℝ) :=
  {f | Continuous f}

structure BaireClassesPackage where
  X : Type u
  topX : TopologicalSpace X
  functionSpace : FunctionSpaceType
  zeroClass : Set (X → ℝ) := BaireClassZero X
  alphaClass : Set (X → ℝ)  -- for any ordinal alpha
  limitClass : Prop
  borelMeasurableClosed : Prop

structure BaireClassesEvidence (P : BaireClassesPackage) where
  zeroClassClosed : P.zeroClass = BaireClassZero P.X
  alphaClassNonempty : Set.Nonempty P.alphaClass
  limitClassClosed : P.limitClass
  borelMeasurableClosed : P.borelMeasurableClosed

def BaireClassesClosed (P : BaireClassesPackage) : Prop :=
  P.zeroClass = BaireClassZero P.X ∧ Set.Nonempty P.alphaClass ∧ P.limitClass ∧ P.borelMeasurableClosed

theorem baire_classes_closed_from_evidence (P : BaireClassesPackage) (E : BaireClassesEvidence P) :
    BaireClassesClosed P := by
  exact And.intro E.zeroClassClosed (And.intro E.alphaClassNonempty (And.intro E.limitClassClosed E.borelMeasurableClosed))

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse