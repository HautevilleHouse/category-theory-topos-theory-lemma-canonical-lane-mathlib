import CategoryTheoryToposTheoryLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ToposWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse