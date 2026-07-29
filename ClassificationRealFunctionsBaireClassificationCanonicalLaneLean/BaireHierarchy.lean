import HautevilleHouse.ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.BaireClasses

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireHierarchyPackage (B : BaireClassPackage) where
  ordinal : Type u
  classUpTo : ordinal → Set B.functionType
  countableUnionClosed : Prop
  limitOrdinalClosure : Prop

structure BaireHierarchyEvidence {B : BaireClassPackage} (H : BaireHierarchyPackage B) where
  countableUnionClosedClosed : H.countableUnionClosed
  limitOrdinalClosureClosed : H.limitOrdinalClosure

def BaireHierarchyClosed {B : BaireClassPackage} (H : BaireHierarchyPackage B) : Prop :=
  H.countableUnionClosed ∧ H.limitOrdinalClosure

theorem baire_hierarchy_closed_from_evidence {B : BaireClassPackage}
    (H : BaireHierarchyPackage B) (E : BaireHierarchyEvidence H) :
    BaireHierarchyClosed H := by
  exact And.intro E.countableUnionClosedClosed E.limitOrdinalClosureClosed

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
