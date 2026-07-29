import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure SeparatingSetPackage where
  family : Set (Set ℝ)
  separatesPoints : ∀ x y : ℝ, x ≠ y → ∃ S ∈ family, (x ∈ S ∧ y ∉ S) ∨ (x ∉ S ∧ y ∈ S)
  closedUnderComplement : ∀ S ∈ family, ℝ \ S ∈ family

structure SeparatingSetEvidence (S : SeparatingSetPackage) where
  separatesPointsClosed : ∀ x y : ℝ, x ≠ y → ∃ S ∈ S.family, (x ∈ S ∧ y ∉ S) ∨ (x ∉ S ∧ y ∈ S)
  complementClosed : ∀ S ∈ S.family, ℝ \ S ∈ S.family

def SeparatingSetClosed (S : SeparatingSetPackage) : Prop :=
  (∀ x y : ℝ, x ≠ y → ∃ S ∈ S.family, (x ∈ S ∧ y ∉ S) ∨ (x ∉ S ∧ y ∈ S)) ∧
  (∀ S ∈ S.family, ℝ \ S ∈ S.family)

theorem separating_set_closed_from_evidence (S : SeparatingSetPackage) (E : SeparatingSetEvidence S) :
    SeparatingSetClosed S := by
  exact And.intro E.separatesPointsClosed E.complementClosed

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse