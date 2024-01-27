// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class KrakenVersionQuery: GraphQLQuery {
  public static let operationName: String = "krakenVersion"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query krakenVersion { krakenVersion { __typename number SHA } }"#
    ))

  public init() {}

  public struct Data: OctopusAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("krakenVersion", KrakenVersion?.self),
    ] }

    /// The current version of kraken.
    public var krakenVersion: KrakenVersion? { __data["krakenVersion"] }

    /// KrakenVersion
    ///
    /// Parent Type: `KrakenVersionType`
    public struct KrakenVersion: OctopusAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.KrakenVersionType }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("number", String?.self),
        .field("SHA", String?.self),
      ] }

      /// The version number that is being executed.
      public var number: String? { __data["number"] }
      /// The git commit SHA that is being executed.
      public var sha: String? { __data["SHA"] }
    }
  }
}
