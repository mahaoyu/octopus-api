// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// An electricity meterpoint is a collection of meters. Meters can be changed over time, so it is convenient to keep an invariant reference. Sometimes there are multiple active meters on a meterpoint at a time (eg ECO10), but expect that to be an edge case.
  static let ElectricityMeterPointType = ApolloAPI.Object(
    typename: "ElectricityMeterPointType",
    implementedInterfaces: [Interfaces.MeterPointInterface.self]
  )
}