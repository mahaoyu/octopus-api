// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// A gas meterpoint is a collection of meters. Meters are changed over time, so it is convenient to keep an invariant reference. We would not expect there to be multiple active meters at a time on a gas meterpoint.
  static let GasMeterPointType = ApolloAPI.Object(
    typename: "GasMeterPointType",
    implementedInterfaces: [Interfaces.MeterPointInterface.self]
  )
}