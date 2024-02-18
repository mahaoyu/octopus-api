// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Unions {
  static let ElectricityTariffType = Union(
    name: "ElectricityTariffType",
    possibleTypes: [
      Objects.StandardTariff.self,
      Objects.DayNightTariff.self,
      Objects.ThreeRateTariff.self,
      Objects.HalfHourlyTariff.self,
      Objects.PrepayTariff.self
    ]
  )
}