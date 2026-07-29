import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireMeasurability

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireSeparationPackage {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    (M : BaireMeasurabilityPackage C) where
  separationProperty : Prop
  hahnBanachType : Prop

structure BaireSeparationEvidence {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    {M : BaireMeasurabilityPackage C} (S : BaireSeparationPackage M) where
  separationPropertyClosed : S.separationProperty
  hahnBanachTypeClosed : S.hahnBanachType

def BaireSeparationClosed {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    {M : BaireMeasurabilityPackage C} (S : BaireSeparationPackage M) : Prop :=
  S.separationProperty ∧ S.hahnBanachType

theorem baire_separation_closed_from_evidence {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    {M : BaireMeasurabilityPackage C} (S : BaireSeparationPackage M)
    (E : BaireSeparationEvidence S) : BaireSeparationClosed S := by
  exact And.intro E.separationPropertyClosed E.hahnBanachTypeClosed

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
