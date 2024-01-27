// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// The unifying approach used to get a Kraken token (JWT: JSON Web Token) with
  /// different types of input.
  ///
  /// The currently supported inputs are:
  /// - account user email/password combination
  /// - account user API key
  /// - organization live secret key
  /// - pre-signed key
  /// - refresh token
  ///
  /// The possible errors that can be raised are:
  ///
  /// - KT-CT-1135: Invalid data.
  /// - KT-CT-1134: Invalid data.
  /// - KT-CT-1113: Disabled GraphQL field requested.
  ///
  static let ObtainKrakenJSONWebToken = ApolloAPI.Object(
    typename: "ObtainKrakenJSONWebToken",
    implementedInterfaces: []
  )
}