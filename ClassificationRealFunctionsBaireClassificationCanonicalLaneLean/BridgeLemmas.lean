import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedBaireClassifier A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact baire_classification_evidence A

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse
