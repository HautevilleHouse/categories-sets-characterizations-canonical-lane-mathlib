import HautevilleHouse.CategoriesSetsCharacterizationsCanonicalLaneLean.SetCategoryExamples

namespace HautevilleHouse
namespace CategoriesSetsCharacterizationsCanonicalLaneLean

structure AdmittedObject where
  categorySet : CategorySet
  setCategoryEvidence : SetCategory categorySet
  categorySetWithEvidence : CategorySetWithEvidence categorySet setCategoryEvidence
  conclusion : Prop
  conclusionTerm : conclusion

def bridgeClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end CategoriesSetsCharacterizationsCanonicalLaneLean
end HautevilleHouse
