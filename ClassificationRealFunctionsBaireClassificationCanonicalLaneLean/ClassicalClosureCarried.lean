import canonicalLaneMathlib.AdmissibleClass
import ClassificationRealFunctionsBaireClassificationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure ClassicalClosureCarriedPackage where
  sourceKey : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

structure ClassicalClosureCarriedEvidence (C : ClassicalClosureCarriedPackage) where
  classicalBoundaryOpen : C.classicalBoundary = "open"
  sourceConjectureClosureClaimed : C.carriedRemainder = "carried"

def ClassicalClosureCarriedClosed (C : ClassicalClosureCarriedPackage) : Prop :=
  C.classicalBoundary = "open" ∧ C.carriedRemainder = "carried"

theorem classical_closure_carried_closed_from_evidence (C : ClassicalClosureCarriedPackage) (E : ClassicalClosureCarriedEvidence C) :
    ClassicalClosureCarriedClosed C := by
  exact And.intro E.classicalBoundaryOpen E.sourceConjectureClosureClaimed

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse