import canonicalLaneMathlib.AdmissibleClass
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClassesPackage

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireOneCharacterizationPackage (P : BaireClassesPackage) where
  pointwiseLimitCharacterization : ∀ (f : P.X → ℝ), f ∈ P.alphaClass ↔ ∃ (seq : ℕ → (P.X → ℝ)), (∀ n, seq n ∈ P.zeroClass) ∧ (∀ x, Tendsto (λ n => seq n x) atTop (𝓝 (f x)))
  uniformLimitCharacterization : Prop
  characterizationEquivalence : Prop

structure BaireOneCharacterizationEvidence {P : BaireClassesPackage} (C : BaireOneCharacterizationPackage P) where
  pointwiseLimitCharacterizationClosed : C.pointwiseLimitCharacterization
  uniformLimitCharacterizationClosed : C.uniformLimitCharacterization
  characterizationEquivalenceClosed : C.characterizationEquivalence

def BaireOneCharacterizationClosed {P : BaireClassesPackage} (C : BaireOneCharacterizationPackage P) : Prop :=
  C.pointwiseLimitCharacterization ∧ C.uniformLimitCharacterization ∧ C.characterizationEquivalence

theorem baire_one_characterization_closed_from_evidence {P : BaireClassesPackage} (C : BaireOneCharacterizationPackage P) (E : BaireOneCharacterizationEvidence C) :
    BaireOneCharacterizationClosed C := by
  exact And.intro E.pointwiseLimitCharacterizationClosed (And.intro E.uniformLimitCharacterizationClosed E.characterizationEquivalenceClosed)

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse