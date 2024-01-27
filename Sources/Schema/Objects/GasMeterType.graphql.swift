// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// A gas meter has a register which holds readings. We would expect this to be a one-to-one relationship between meter and register.
  static let GasMeterType = ApolloAPI.Object(
    typename: "GasMeterType",
    implementedInterfaces: [
      Interfaces.Node.self,
      Interfaces.Meter.self
    ]
  )
}