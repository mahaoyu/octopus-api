// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Unions {
  static let EnergyTariffType = Union(
    name: "EnergyTariffType",
    possibleTypes: [
      Objects.StandardTariff.self,
      Objects.DayNightTariff.self,
      Objects.ThreeRateTariff.self,
      Objects.GasTariffType.self
    ]
  )
}