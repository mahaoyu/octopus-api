// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetEnergyProductQuery: GraphQLQuery {
  public static let operationName: String = "GetEnergyProduct"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetEnergyProduct($productCode: String!, $postcode: String!, $first: Int!, $cursorTariffsAfter: String) { energyProduct(code: $productCode) { __typename id availableFrom availableTo direction code displayName fullName description notes isChargedHalfHourly isVariable isPrepay isGreen term isHidden isAvailable isUnavailable isFixed isDomestic exitFees exitFeesType tariffs(postcode: $postcode, first: $first, after: $cursorTariffsAfter) { __typename pageInfo { __typename hasNextPage hasPreviousPage startCursor endCursor } totalCount edgeCount edges { __typename cursor node { __typename ... on StandardTariff { id displayName description productCode tariffCode fullName standingCharge unitRate } ... on DayNightTariff { id displayName description productCode tariffCode fullName standingCharge dayRate nightRate } ... on ThreeRateTariff { id displayName description productCode tariffCode fullName standingCharge dayRate nightRate offPeakRate } ... on GasTariffType { id displayName description productCode tariffCode fullName standingCharge unitRate } } } } } }"#
    ))

  public var productCode: String
  public var postcode: String
  public var first: Int
  public var cursorTariffsAfter: GraphQLNullable<String>

  public init(
    productCode: String,
    postcode: String,
    first: Int,
    cursorTariffsAfter: GraphQLNullable<String>
  ) {
    self.productCode = productCode
    self.postcode = postcode
    self.first = first
    self.cursorTariffsAfter = cursorTariffsAfter
  }

  public var __variables: Variables? { [
    "productCode": productCode,
    "postcode": postcode,
    "first": first,
    "cursorTariffsAfter": cursorTariffsAfter
  ] }

  public struct Data: OctopusAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("energyProduct", EnergyProduct?.self, arguments: ["code": .variable("productCode")]),
    ] }

    /// Get an energy product that matches the given code.
    public var energyProduct: EnergyProduct? { __data["energyProduct"] }

    /// EnergyProduct
    ///
    /// Parent Type: `EnergyProductType`
    public struct EnergyProduct: OctopusAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyProductType }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", OctopusAPI.ID.self),
        .field("availableFrom", OctopusAPI.DateTime.self),
        .field("availableTo", OctopusAPI.DateTime?.self),
        .field("direction", GraphQLEnum<OctopusAPI.EnergyProductDirection>?.self),
        .field("code", String.self),
        .field("displayName", String.self),
        .field("fullName", String.self),
        .field("description", String.self),
        .field("notes", String.self),
        .field("isChargedHalfHourly", Bool.self),
        .field("isVariable", Bool.self),
        .field("isPrepay", Bool.self),
        .field("isGreen", Bool.self),
        .field("term", Int?.self),
        .field("isHidden", Bool.self),
        .field("isAvailable", Bool?.self),
        .field("isUnavailable", Bool?.self),
        .field("isFixed", Bool?.self),
        .field("isDomestic", Bool?.self),
        .field("exitFees", Int?.self),
        .field("exitFeesType", String?.self),
        .field("tariffs", Tariffs?.self, arguments: [
          "postcode": .variable("postcode"),
          "first": .variable("first"),
          "after": .variable("cursorTariffsAfter")
        ]),
      ] }

      public var id: OctopusAPI.ID { __data["id"] }
      public var availableFrom: OctopusAPI.DateTime { __data["availableFrom"] }
      public var availableTo: OctopusAPI.DateTime? { __data["availableTo"] }
      /// Whether the product is an import or export product.
      public var direction: GraphQLEnum<OctopusAPI.EnergyProductDirection>? { __data["direction"] }
      public var code: String { __data["code"] }
      /// This name will be shown to customers during sign-up
      public var displayName: String { __data["displayName"] }
      public var fullName: String { __data["fullName"] }
      /// This will be shown to customers during sign-up
      public var description: String { __data["description"] }
      /// These are internal notes to explain why this product exists
      public var notes: String { __data["notes"] }
      public var isChargedHalfHourly: Bool { __data["isChargedHalfHourly"] }
      public var isVariable: Bool { __data["isVariable"] }
      public var isPrepay: Bool { __data["isPrepay"] }
      public var isGreen: Bool { __data["isGreen"] }
      /// Duration of agreements using this product in months
      public var term: Int? { __data["term"] }
      /// Whether to hide this product from the direct registration journey
      public var isHidden: Bool { __data["isHidden"] }
      public var isAvailable: Bool? { __data["isAvailable"] }
      public var isUnavailable: Bool? { __data["isUnavailable"] }
      public var isFixed: Bool? { __data["isFixed"] }
      public var isDomestic: Bool? { __data["isDomestic"] }
      /// The exit fee applied per fuel if the agreement is ended early. Total value is determined by exit fee type, i.e. this value is either a flat cost or cost per year/month remaining on the agreement.
      public var exitFees: Int? { __data["exitFees"] }
      /// Determines how the exit fee is calculated.
      public var exitFeesType: String? { __data["exitFeesType"] }
      /// A list of tariffs per product for a given postcode.
      public var tariffs: Tariffs? { __data["tariffs"] }

      /// EnergyProduct.Tariffs
      ///
      /// Parent Type: `EnergyTariffConnectionTypeConnection`
      public struct Tariffs: OctopusAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyTariffConnectionTypeConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("pageInfo", PageInfo.self),
          .field("totalCount", Int.self),
          .field("edgeCount", Int.self),
          .field("edges", [Edge?].self),
        ] }

        /// Pagination data for this connection.
        public var pageInfo: PageInfo { __data["pageInfo"] }
        /// Total number of nodes.
        public var totalCount: Int { __data["totalCount"] }
        /// Number of nodes in the edge.
        public var edgeCount: Int { __data["edgeCount"] }
        /// Contains the nodes in this connection.
        public var edges: [Edge?] { __data["edges"] }

        /// EnergyProduct.Tariffs.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: OctopusAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("hasNextPage", Bool.self),
            .field("hasPreviousPage", Bool.self),
            .field("startCursor", String?.self),
            .field("endCursor", String?.self),
          ] }

          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool { __data["hasNextPage"] }
          /// When paginating backwards, are there more items?
          public var hasPreviousPage: Bool { __data["hasPreviousPage"] }
          /// When paginating backwards, the cursor to continue.
          public var startCursor: String? { __data["startCursor"] }
          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
        }

        /// EnergyProduct.Tariffs.Edge
        ///
        /// Parent Type: `EnergyTariffConnectionTypeEdge`
        public struct Edge: OctopusAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.EnergyTariffConnectionTypeEdge }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("cursor", String.self),
            .field("node", Node?.self),
          ] }

          /// A cursor for use in pagination
          public var cursor: String { __data["cursor"] }
          /// The item at the end of the edge
          public var node: Node? { __data["node"] }

          /// EnergyProduct.Tariffs.Edge.Node
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

            /// EnergyProduct.Tariffs.Edge.Node.AsStandardTariff
            ///
            /// Parent Type: `StandardTariff`
            public struct AsStandardTariff: OctopusAPI.InlineFragment {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public typealias RootEntityType = GetEnergyProductQuery.Data.EnergyProduct.Tariffs.Edge.Node
              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.StandardTariff }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("id", OctopusAPI.ID?.self),
                .field("displayName", String?.self),
                .field("description", String?.self),
                .field("productCode", String?.self),
                .field("tariffCode", String?.self),
                .field("fullName", String?.self),
                .field("standingCharge", Double?.self),
                .field("unitRate", Double?.self),
              ] }

              public var id: OctopusAPI.ID? { __data["id"] }
              public var displayName: String? { __data["displayName"] }
              public var description: String? { __data["description"] }
              public var productCode: String? { __data["productCode"] }
              /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
              public var tariffCode: String? { __data["tariffCode"] }
              public var fullName: String? { __data["fullName"] }
              public var standingCharge: Double? { __data["standingCharge"] }
              public var unitRate: Double? { __data["unitRate"] }
            }

            /// EnergyProduct.Tariffs.Edge.Node.AsDayNightTariff
            ///
            /// Parent Type: `DayNightTariff`
            public struct AsDayNightTariff: OctopusAPI.InlineFragment {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public typealias RootEntityType = GetEnergyProductQuery.Data.EnergyProduct.Tariffs.Edge.Node
              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.DayNightTariff }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("id", OctopusAPI.ID?.self),
                .field("displayName", String?.self),
                .field("description", String?.self),
                .field("productCode", String?.self),
                .field("tariffCode", String?.self),
                .field("fullName", String?.self),
                .field("standingCharge", Double?.self),
                .field("dayRate", Double?.self),
                .field("nightRate", Double?.self),
              ] }

              public var id: OctopusAPI.ID? { __data["id"] }
              public var displayName: String? { __data["displayName"] }
              public var description: String? { __data["description"] }
              public var productCode: String? { __data["productCode"] }
              /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
              public var tariffCode: String? { __data["tariffCode"] }
              public var fullName: String? { __data["fullName"] }
              public var standingCharge: Double? { __data["standingCharge"] }
              public var dayRate: Double? { __data["dayRate"] }
              public var nightRate: Double? { __data["nightRate"] }
            }

            /// EnergyProduct.Tariffs.Edge.Node.AsThreeRateTariff
            ///
            /// Parent Type: `ThreeRateTariff`
            public struct AsThreeRateTariff: OctopusAPI.InlineFragment {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public typealias RootEntityType = GetEnergyProductQuery.Data.EnergyProduct.Tariffs.Edge.Node
              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ThreeRateTariff }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("id", OctopusAPI.ID?.self),
                .field("displayName", String?.self),
                .field("description", String?.self),
                .field("productCode", String?.self),
                .field("tariffCode", String?.self),
                .field("fullName", String?.self),
                .field("standingCharge", Double?.self),
                .field("dayRate", Double?.self),
                .field("nightRate", Double?.self),
                .field("offPeakRate", Double?.self),
              ] }

              public var id: OctopusAPI.ID? { __data["id"] }
              public var displayName: String? { __data["displayName"] }
              public var description: String? { __data["description"] }
              public var productCode: String? { __data["productCode"] }
              /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
              public var tariffCode: String? { __data["tariffCode"] }
              public var fullName: String? { __data["fullName"] }
              public var standingCharge: Double? { __data["standingCharge"] }
              public var dayRate: Double? { __data["dayRate"] }
              public var nightRate: Double? { __data["nightRate"] }
              public var offPeakRate: Double? { __data["offPeakRate"] }
            }

            /// EnergyProduct.Tariffs.Edge.Node.AsGasTariffType
            ///
            /// Parent Type: `GasTariffType`
            public struct AsGasTariffType: OctopusAPI.InlineFragment {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public typealias RootEntityType = GetEnergyProductQuery.Data.EnergyProduct.Tariffs.Edge.Node
              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasTariffType }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("id", OctopusAPI.ID?.self),
                .field("displayName", String?.self),
                .field("description", String?.self),
                .field("productCode", String?.self),
                .field("tariffCode", String?.self),
                .field("fullName", String?.self),
                .field("standingCharge", Double?.self),
                .field("unitRate", Double?.self),
              ] }

              public var id: OctopusAPI.ID? { __data["id"] }
              public var displayName: String? { __data["displayName"] }
              public var description: String? { __data["description"] }
              public var productCode: String? { __data["productCode"] }
              /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
              public var tariffCode: String? { __data["tariffCode"] }
              public var fullName: String? { __data["fullName"] }
              public var standingCharge: Double? { __data["standingCharge"] }
              public var unitRate: Double? { __data["unitRate"] }
            }
          }
        }
      }
    }
  }
}
