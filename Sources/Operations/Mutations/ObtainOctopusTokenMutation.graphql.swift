// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ObtainOctopusTokenMutation: GraphQLMutation {
  public static let operationName: String = "ObtainOctopusToken"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation ObtainOctopusToken($input: ObtainJSONWebTokenInput!) { obtainKrakenToken(input: $input) { __typename token refreshToken refreshExpiresIn } }"#
    ))

  public var input: ObtainJSONWebTokenInput

  public init(input: ObtainJSONWebTokenInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: OctopusAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("obtainKrakenToken", ObtainKrakenToken?.self, arguments: ["input": .variable("input")]),
    ] }

    /// Create a Kraken Token (JWT) for authentication.  
    ///
    /// Provide the required input fields to obtain the token. 
    ///
    /// The token should be used as the `Authorization` header for any authenticated requests.
    ///
    /// The possible errors that can be raised are:
    ///
    /// - KT-CT-1135: Invalid data.
    /// - KT-CT-1134: Invalid data.
    /// - KT-CT-1113: Disabled GraphQL field requested.
    ///
    public var obtainKrakenToken: ObtainKrakenToken? { __data["obtainKrakenToken"] }

    /// ObtainKrakenToken
    ///
    /// Parent Type: `ObtainKrakenJSONWebToken`
    public struct ObtainKrakenToken: OctopusAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ObtainKrakenJSONWebToken }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("token", String.self),
        .field("refreshToken", String?.self),
        .field("refreshExpiresIn", Int?.self),
      ] }

      /// The Kraken Token.  Can be used in the `Authorization` header for subsequent calls to the API to access protected resources.
      public var token: String { __data["token"] }
      /// A token that can be used in a subsequent call to `obtainKrakenToken` to get a new Kraken Token with the same access conditions after the previous one has expired.
      public var refreshToken: String? { __data["refreshToken"] }
      /// A Unix timestamp representing the point in time at which the refresh token will expire.
      public var refreshExpiresIn: Int? { __data["refreshExpiresIn"] }
    }
  }
}
