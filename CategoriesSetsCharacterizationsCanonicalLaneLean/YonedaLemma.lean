import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure YonedaLemmaPackage (C : Type u) [Category.{v} C] (X : C) where
  yonedaEmbeddingFullFaithful : Prop
  naturalIsoHom_ : Prop
  representablePresheavesCharacterized : Prop

def YonedaLemmaClosed (C : Type u) [Category.{v} C] (X : C) (P : YonedaLemmaPackage C X) : Prop :=
  P.yonedaEmbeddingFullFaithful ∧ P.naturalIsoHom_ ∧ P.representablePresheavesCharacterized

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse