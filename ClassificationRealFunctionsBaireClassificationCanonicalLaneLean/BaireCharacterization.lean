import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireHierarchy

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireCharacterizationPackage {B : BaireClassPackage}
    (H : BaireHierarchyPackage B) where
  pointwiseLimitCharacterization : Prop
  uniformLimitCharacterization : Prop

structure BaireCharacterizationEvidence {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} (C : BaireCharacterizationPackage H) where
  pointwiseLimitCharacterizationClosed : C.pointwiseLimitCharacterization
  uniformLimitCharacterizationClosed : C.uniformLimitCharacterization

def BaireCharacterizationClosed {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} (C : BaireCharacterizationPackage H) : Prop :=
  C.pointwiseLimitCharacterization ∧ C.uniformLimitCharacterization

theorem baire_characterization_closed_from_evidence {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} (C : BaireCharacterizationPackage H)
    (E : BaireCharacterizationEvidence C) : BaireCharacterizationClosed C := by
  exact And.intro E.pointwiseLimitCharacterizationClosed E.uniformLimitCharacterizationClosed

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
