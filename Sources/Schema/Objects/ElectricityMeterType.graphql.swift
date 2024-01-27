// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// An electricity meter is a collection of registers which store readings. Eco7 meters are an example of a meter with multiple registers (for day and night).
  static let ElectricityMeterType = ApolloAPI.Object(
    typename: "ElectricityMeterType",
    implementedInterfaces: [
      Interfaces.Node.self,
      Interfaces.Meter.self
    ]
  )
}