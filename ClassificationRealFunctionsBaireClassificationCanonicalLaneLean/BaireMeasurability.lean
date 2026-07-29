import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireCharacterization
import Mathlib.MeasureTheory.MeasurableSpace.Basic

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireMeasurabilityPackage {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} (C : BaireCharacterizationPackage H) where
  measurabilityOfBaireClasses : Prop
  borelHierarchyInclusion : Prop

structure BaireMeasurabilityEvidence {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    (M : BaireMeasurabilityPackage C) where
  measurabilityOfBaireClassesClosed : M.measurabilityOfBaireClasses
  borelHierarchyInclusionClosed : M.borelHierarchyInclusion

def BaireMeasurabilityClosed {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    (M : BaireMeasurabilityPackage C) : Prop :=
  M.measurabilityOfBaireClasses ∧ M.borelHierarchyInclusion

theorem baire_measurability_closed_from_evidence {B : BaireClassPackage}
    {H : BaireHierarchyPackage B} {C : BaireCharacterizationPackage H}
    (M : BaireMeasurabilityPackage C) (E : BaireMeasurabilityEvidence M) :
    BaireMeasurabilityClosed M := by
  exact And.intro E.measurabilityOfBaireClassesClosed E.borelHierarchyInclusionClosed

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
