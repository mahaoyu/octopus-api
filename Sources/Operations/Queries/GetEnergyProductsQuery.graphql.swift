// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetEnergyProductsQuery: GraphQLQuery {
  public static let operationName: String = "GetEnergyProducts"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetEnergyProducts($postcode: String!, $first: Int!, $brands: [String!]!) { energyProducts( postcode: $postcode first: $first brands: $brands availability: AVAILABLE filterBy: DOMESTIC ) { __typename edges { __typename node { __typename id availableFrom availableTo displayName fullName code direction notes isChargedHalfHourly isVariable isGreen term tariffs(postcode: $postcode, first: $first) { __typename edges { __typename node { __typename ... on StandardTariff { id displayName description productCode tariffCode fullName unitRate standingCharge } ... on DayNightTariff { id } ... on ThreeRateTariff { id } ... on GasTariffType { id } } } } } } } }"#
    ))

  public var postcode: String
  public var first: Int
  public var brands: [String]

  public init(
    postcode: String,
    first: Int,
    brands: [String]
  ) {
    self.postcode = postcode
    self.first = first
    self.brands = brands
  }

  public var __variables: Variables? { [
    "postcode": postcode,
    "first": first,
    "brands": brands
  ] }

  public struct Data: OctopusAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("energyProducts", EnergyProducts?.self, arguments: [
        "postcode": .variable("postcode"),
        "first": .variable("first"),
        "brands": .variable("brands"),
        "availability": "AVAILABLE",
        "filterBy": "DOMESTIC"
      ]),
    ] }

    /// Get all products for a given brand and postcode. The supplied postcode will ensure that there are tariffs available on the product for the GSP.
    public var energyProducts: EnergyProducts? { __data["energyProducts"] }

    /// EnergyProducts
    ///
    /// Parent Type: `EnergyProductConnectionTypeConnection`
    public struct EnergyProducts: OctopusAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyProductConnectionTypeConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("edges", [Edge?].self),
      ] }

      /// Contains the nodes in this connection.
      public var edges: [Edge?] { __data["edges"] }

      /// EnergyProducts.Edge
      ///
      /// Parent Type: `EnergyProductConnectionTypeEdge`
      public struct Edge: OctopusAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyProductConnectionTypeEdge }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("node", Node?.self),
        ] }

        /// The item at the end of the edge
        public var node: Node? { __data["node"] }

        /// EnergyProducts.Edge.Node
        ///
        /// Parent Type: `EnergyProductType`
        public struct Node: OctopusAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyProductType }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", OctopusAPI.ID.self),
            .field("availableFrom", OctopusAPI.DateTime.self),
            .field("availableTo", OctopusAPI.DateTime?.self),
            .field("displayName", String.self),
            .field("fullName", String.self),
            .field("code", String.self),
            .field("direction", GraphQLEnum<OctopusAPI.EnergyProductDirection>?.self),
            .field("notes", String.self),
            .field("isChargedHalfHourly", Bool.self),
            .field("isVariable", Bool.self),
            .field("isGreen", Bool.self),
            .field("term", Int?.self),
            .field("tariffs", Tariffs?.self, arguments: [
              "postcode": .variable("postcode"),
              "first": .variable("first")
            ]),
          ] }

          public var id: OctopusAPI.ID { __data["id"] }
          public var availableFrom: OctopusAPI.DateTime { __data["availableFrom"] }
          public var availableTo: OctopusAPI.DateTime? { __data["availableTo"] }
          /// This name will be shown to customers during sign-up
          public var displayName: String { __data["displayName"] }
          public var fullName: String { __data["fullName"] }
          public var code: String { __data["code"] }
          /// Whether the product is an import or export product.
          public var direction: GraphQLEnum<OctopusAPI.EnergyProductDirection>? { __data["direction"] }
          /// These are internal notes to explain why this product exists
          public var notes: String { __data["notes"] }
          public var isChargedHalfHourly: Bool { __data["isChargedHalfHourly"] }
          public var isVariable: Bool { __data["isVariable"] }
          public var isGreen: Bool { __data["isGreen"] }
          /// Duration of agreements using this product in months
          public var term: Int? { __data["term"] }
          /// A list of tariffs per product for a given postcode.
          public var tariffs: Tariffs? { __data["tariffs"] }

          /// EnergyProducts.Edge.Node.Tariffs
          ///
          /// Parent Type: `EnergyTariffConnectionTypeConnection`
          public struct Tariffs: OctopusAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyTariffConnectionTypeConnection }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("edges", [Edge?].self),
            ] }

            /// Contains the nodes in this connection.
            public var edges: [Edge?] { __data["edges"] }

            /// EnergyProducts.Edge.Node.Tariffs.Edge
            ///
            /// Parent Type: `EnergyTariffConnectionTypeEdge`
            public struct Edge: OctopusAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyTariffConnectionTypeEdge }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("node", Node?.self),
              ] }

              /// The item at the end of the edge
              public var node: Node? { __data["node"] }

              /// EnergyProducts.Edge.Node.Tariffs.Edge.Node
              ///
              /// Parent Type: `EnergyTariffType`
              public struct Node: OctopusAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Unions.EnergyTariffType }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .inlineFragment(AsStandardTariff.self),
                  .inlineFragment(AsDayNightTariff.self),
                  .inlineFragment(AsThreeRateTariff.self),
                  .inlineFragment(AsGasTariffType.self),
                ] }

                public var asStandardTariff: AsStandardTariff? { _asInlineFragment() }
                public var asDayNightTariff: AsDayNightTariff? { _asInlineFragment() }
                public var asThreeRateTariff: AsThreeRateTariff? { _asInlineFragment() }
                public var asGasTariffType: AsGasTariffType? { _asInlineFragment() }

                /// EnergyProducts.Edge.Node.Tariffs.Edge.Node.AsStandardTariff
                ///
                /// Parent Type: `StandardTariff`
                public struct AsStandardTariff: OctopusAPI.InlineFragment {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public typealias RootEntityType = GetEnergyProductsQuery.Data.EnergyProducts.Edge.Node.Tariffs.Edge.Node
                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.StandardTariff }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("id", OctopusAPI.ID?.self),
                    .field("displayName", String?.self),
                    .field("description", String?.self),
                    .field("productCode", String?.self),
                    .field("tariffCode", String?.self),
                    .field("fullName", String?.self),
                    .field("unitRate", Double?.self),
                    .field("standingCharge", Double?.self),
                  ] }

                  public var id: OctopusAPI.ID? { __data["id"] }
                  public var displayName: String? { __data["displayName"] }
                  public var description: String? { __data["description"] }
                  public var productCode: String? { __data["productCode"] }
                  /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                  public var tariffCode: String? { __data["tariffCode"] }
                  public var fullName: String? { __data["fullName"] }
                  public var unitRate: Double? { __data["unitRate"] }
                  public var standingCharge: Double? { __data["standingCharge"] }
                }

                /// EnergyProducts.Edge.Node.Tariffs.Edge.Node.AsDayNightTariff
                ///
                /// Parent Type: `DayNightTariff`
                public struct AsDayNightTariff: OctopusAPI.InlineFragment {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public typealias RootEntityType = GetEnergyProductsQuery.Data.EnergyProducts.Edge.Node.Tariffs.Edge.Node
                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.DayNightTariff }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("id", OctopusAPI.ID?.self),
                  ] }

                  public var id: OctopusAPI.ID? { __data["id"] }
                }

                /// EnergyProducts.Edge.Node.Tariffs.Edge.Node.AsThreeRateTariff
                ///
                /// Parent Type: `ThreeRateTariff`
                public struct AsThreeRateTariff: OctopusAPI.InlineFragment {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public typealias RootEntityType = GetEnergyProductsQuery.Data.EnergyProducts.Edge.Node.Tariffs.Edge.Node
                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ThreeRateTariff }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("id", OctopusAPI.ID?.self),
                  ] }

                  public var id: OctopusAPI.ID? { __data["id"] }
                }

                /// EnergyProducts.Edge.Node.Tariffs.Edge.Node.AsGasTariffType
                ///
                /// Parent Type: `GasTariffType`
                public struct AsGasTariffType: OctopusAPI.InlineFragment {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public typealias RootEntityType = GetEnergyProductsQuery.Data.EnergyProducts.Edge.Node.Tariffs.Edge.Node
                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasTariffType }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("id", OctopusAPI.ID?.self),
                  ] }

                  public var id: OctopusAPI.ID? { __data["id"] }
                }
              }
            }
          }
        }
      }
    }
  }
}