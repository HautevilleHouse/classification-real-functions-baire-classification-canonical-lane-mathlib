import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassificationRealFunctionsBaireClassificationCanonicalLaneLean

structure BaireSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BaireAdmittedObject where
  space : BaireSpace
  functionClass : Nat
  isOfClass : Prop
  conclusion : isOfClass

structure BaireEndgameState where
  object : BaireAdmittedObject

def BaireWitnessClosed (O : BaireAdmittedObject) : Prop :=
  O.isOfClass

end ClassificationRealFunctionsBaireClassificationCanonicalLaneLean
end HautevilleHouse