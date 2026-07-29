import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryToposTheoryLemmaCanonicalLaneLean

structure LimitsAndColimitsPackage where
  smallLimits : Prop
  smallColimits : Prop
  limitExistence : Prop
  colimitExistence : Prop
  preservesLimits : Prop

structure LimitsAndColimitsEvidence (L : LimitsAndColimitsPackage) where
  smallLimitsClosed : L.smallLimits
  smallColimitsClosed : L.smallColimits
  limitExistenceClosed : L.limitExistence
  colimitExistenceClosed : L.colimitExistence
  preservesLimitsClosed : L.preservesLimits

def LimitsAndColimitsClosed (L : LimitsAndColimitsPackage) : Prop :=
  L.smallLimits ∧ L.smallColimits ∧ L.limitExistence ∧ L.colimitExistence ∧ L.preservesLimits

theorem limits_and_colimits_closed_from_evidence (L : LimitsAndColimitsPackage) (E : LimitsAndColimitsEvidence L) :
    LimitsAndColimitsClosed L := by
  exact And.intro E.smallLimitsClosed (And.intro E.smallColimitsClosed (And.intro E.limitExistenceClosed (And.intro E.colimitExistenceClosed E.preservesLimitsClosed)))

end CategoryTheoryToposTheoryLemmaCanonicalLaneLean
end HautevilleHouse