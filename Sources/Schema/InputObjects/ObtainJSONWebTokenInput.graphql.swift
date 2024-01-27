// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The input type for obtaining a Kraken Token (JWT).
public struct ObtainJSONWebTokenInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    email: GraphQLNullable<String> = nil,
    password: GraphQLNullable<String> = nil,
    aPIKey: GraphQLNullable<String> = nil,
    organizationSecretKey: GraphQLNullable<String> = nil,
    preSignedKey: GraphQLNullable<String> = nil,
    refreshToken: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "email": email,
      "password": password,
      "APIKey": aPIKey,
      "organizationSecretKey": organizationSecretKey,
      "preSignedKey": preSignedKey,
      "refreshToken": refreshToken
    ])
  }

  /// Email address of the account user. Use with 'password' field.
  public var email: GraphQLNullable<String> {
    get { __data["email"] }
    set { __data["email"] = newValue }
  }

  /// Password of the account user. Use with 'email' field.
  public var password: GraphQLNullable<String> {
    get { __data["password"] }
    set { __data["password"] = newValue }
  }

  /// API key of the account user. Use standalone, don't provide a second input field.
  public var aPIKey: GraphQLNullable<String> {
    get { __data["APIKey"] }
    set { __data["APIKey"] = newValue }
  }

  /// Live secret key of an third-party organization. Use standalone, don't provide a second input field.
  public var organizationSecretKey: GraphQLNullable<String> {
    get { __data["organizationSecretKey"] }
    set { __data["organizationSecretKey"] = newValue }
  }

  /// Short-lived, temporary key (that's pre-signed). Use standalone, don't provide a second input field.
  public var preSignedKey: GraphQLNullable<String> {
    get { __data["preSignedKey"] }
    set { __data["preSignedKey"] = newValue }
  }

  /// The refresh token that can be used to extend the expiry claim of a Kraken token. Use standalone, don't provide a second input field.
  public var refreshToken: GraphQLNullable<String> {
    get { __data["refreshToken"] }
    set { __data["refreshToken"] = newValue }
  }
}
