import canonicalLaneMathlib.AdmissibleClass
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClassesPackage

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure HierarchyStrictnessPackage (P : BaireClassesPackage) where
  strictInclusion : Prop
  nonBaireOneExists : Prop
  nonBaireTwoExists : Prop
  witnessFunction : P.X → ℝ
  witnessNotBaireOne : witnessFunction ∉ P.alphaClass  -- assuming alphaClass denotes Baire class 2 or higher
  witnessNotBaireTwo : Prop
  strictInclusionClosed : strictInclusion
  nonBaireOneExistsClosed : nonBaireOneExists
  nonBaireTwoExistsClosed : nonBaireTwoExists

structure HierarchyStrictnessEvidence {P : BaireClassesPackage} (H : HierarchyStrictnessPackage P) where
  strictInclusionClosed : H.strictInclusion
  nonBaireOneExistsClosed : H.nonBaireOneExists
  nonBaireTwoExistsClosed : H.nonBaireTwoExists

def HierarchyStrictnessClosed {P : BaireClassesPackage} (H : HierarchyStrictnessPackage P) : Prop :=
  H.strictInclusion ∧ H.nonBaireOneExists ∧ H.nonBaireTwoExists

theorem hierarchy_strictness_closed_from_evidence {P : BaireClassesPackage} (H : HierarchyStrictnessPackage P) (E : HierarchyStrictnessEvidence H) :
    HierarchyStrictnessClosed H := by
  exact And.intro E.strictInclusionClosed (And.intro E.nonBaireOneExistsClosed E.nonBaireTwoExistsClosed)

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse