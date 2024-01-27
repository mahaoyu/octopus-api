// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetInitialUserDetailsQuery: GraphQLQuery {
  public static let operationName: String = "GetInitialUserDetails"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetInitialUserDetails { viewer { __typename preferredName liveSecretKey accounts { __typename number } accountUserRoles { __typename id user { __typename id } account { __typename id brand number properties { __typename address postcode electricityMeterPoints { __typename id mpan gspGroupId meters { __typename id serialNumber } status agreements(excludeFuture: true) { __typename id validFrom validTo agreedFrom agreedTo tariff { __typename ... on HalfHourlyTariff { id displayName fullName description tariffCode productCode standingCharge } ... on StandardTariff { id displayName fullName description tariffCode productCode unitRate standingCharge } } } } } } } } }"#
    ))

  public init() {}

  public struct Data: OctopusAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("viewer", Viewer?.self),
    ] }

    ///  The currently authenticated user. 
    ///
    ///  
    ///
    /// This field requires the `Authorization` header to be set. 
    ///
    ///
    public var viewer: Viewer? { __data["viewer"] }

    /// Viewer
    ///
    /// Parent Type: `AccountUserType`
    public struct Viewer: OctopusAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.AccountUserType }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("preferredName", String?.self),
        .field("liveSecretKey", String?.self),
        .field("accounts", [Account?]?.self),
        .field("accountUserRoles", [AccountUserRole?]?.self),
      ] }

      /// The user's preferred name.
      public var preferredName: String? { __data["preferredName"] }
      /// The user's secret key to access the Developer API.
      public var liveSecretKey: String? { __data["liveSecretKey"] }
      /// List of accounts that the user is linked to either via portfolio role or account role.
      public var accounts: [Account?]? { __data["accounts"] }
      /// List of roles a user has for each account they're linked to.
      public var accountUserRoles: [AccountUserRole?]? { __data["accountUserRoles"] }

      /// Viewer.Account
      ///
      /// Parent Type: `AccountInterface`
      public struct Account: OctopusAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Interfaces.AccountInterface }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("number", String?.self),
        ] }

        /// A code that uniquely identifies the account.
        public var number: String? { __data["number"] }
      }

      /// Viewer.AccountUserRole
      ///
      /// Parent Type: `AccountUserRoleType`
      public struct AccountUserRole: OctopusAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.AccountUserRoleType }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", OctopusAPI.ID.self),
          .field("user", User.self),
          .field("account", Account.self),
        ] }

        public var id: OctopusAPI.ID { __data["id"] }
        public var user: User { __data["user"] }
        public var account: Account { __data["account"] }

        /// Viewer.AccountUserRole.User
        ///
        /// Parent Type: `AccountUserType`
        public struct User: OctopusAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.AccountUserType }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", OctopusAPI.ID.self),
          ] }

          public var id: OctopusAPI.ID { __data["id"] }
        }

        /// Viewer.AccountUserRole.Account
        ///
        /// Parent Type: `AccountType`
        public struct Account: OctopusAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.AccountType }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", OctopusAPI.ID.self),
            .field("brand", String?.self),
            .field("number", String?.self),
            .field("properties", [Property?]?.self),
          ] }

          public var id: OctopusAPI.ID { __data["id"] }
          /// The brand of the account.
          public var brand: String? { __data["brand"] }
          /// A code that uniquely identifies the account.
          public var number: String? { __data["number"] }
          /// Properties linked to the account now and in the future
          public var properties: [Property?]? { __data["properties"] }

          /// Viewer.AccountUserRole.Account.Property
          ///
          /// Parent Type: `PropertyType`
          public struct Property: OctopusAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.PropertyType }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("address", String?.self),
              .field("postcode", String.self),
              .field("electricityMeterPoints", [ElectricityMeterPoint?]?.self),
            ] }

            /// The address of the property, formatted into a single string
            public var address: String? { __data["address"] }
            public var postcode: String { __data["postcode"] }
            /// Retrieve the details of an electricity meter-point.
            public var electricityMeterPoints: [ElectricityMeterPoint?]? { __data["electricityMeterPoints"] }

            /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint
            ///
            /// Parent Type: `ElectricityMeterPointType`
            public struct ElectricityMeterPoint: OctopusAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ElectricityMeterPointType }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("id", OctopusAPI.ID.self),
                .field("mpan", String.self),
                .field("gspGroupId", String?.self),
                .field("meters", [Meter?]?.self),
                .field("status", String?.self),
                .field("agreements", [Agreement?]?.self, arguments: ["excludeFuture": true]),
              ] }

              public var id: OctopusAPI.ID { __data["id"] }
              public var mpan: String { __data["mpan"] }
              /// The distribution network the grid supply point falls under
              public var gspGroupId: String? { __data["gspGroupId"] }
              public var meters: [Meter?]? { __data["meters"] }
              public var status: String? { __data["status"] }
              /// A list of electricity agreements belonging to an account that is linked to the viewer. Filters out expired agreements by default.
              public var agreements: [Agreement?]? { __data["agreements"] }

              /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Meter
              ///
              /// Parent Type: `ElectricityMeterType`
              public struct Meter: OctopusAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ElectricityMeterType }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("id", OctopusAPI.ID.self),
                  .field("serialNumber", String.self),
                ] }

                public var id: OctopusAPI.ID { __data["id"] }
                public var serialNumber: String { __data["serialNumber"] }
              }

              /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement
              ///
              /// Parent Type: `ElectricityAgreementType`
              public struct Agreement: OctopusAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ElectricityAgreementType }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("id", Int?.self),
                  .field("validFrom", OctopusAPI.DateTime?.self),
                  .field("validTo", OctopusAPI.DateTime?.self),
                  .field("agreedFrom", OctopusAPI.DateTime?.self),
                  .field("agreedTo", OctopusAPI.DateTime?.self),
                  .field("tariff", Tariff?.self),
                ] }

                public var id: Int? { __data["id"] }
                public var validFrom: OctopusAPI.DateTime? { __data["validFrom"] }
                public var validTo: OctopusAPI.DateTime? { __data["validTo"] }
                public var agreedFrom: OctopusAPI.DateTime? { __data["agreedFrom"] }
                public var agreedTo: OctopusAPI.DateTime? { __data["agreedTo"] }
                public var tariff: Tariff? { __data["tariff"] }

                /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff
                ///
                /// Parent Type: `ElectricityTariffType`
                public struct Tariff: OctopusAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Unions.ElectricityTariffType }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("__typename", String.self),
                    .inlineFragment(AsHalfHourlyTariff.self),
                    .inlineFragment(AsStandardTariff.self),
                  ] }

                  public var asHalfHourlyTariff: AsHalfHourlyTariff? { _asInlineFragment() }
                  public var asStandardTariff: AsStandardTariff? { _asInlineFragment() }

                  /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff.AsHalfHourlyTariff
                  ///
                  /// Parent Type: `HalfHourlyTariff`
                  public struct AsHalfHourlyTariff: OctopusAPI.InlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = GetInitialUserDetailsQuery.Data.Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff
                    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.HalfHourlyTariff }
                    public static var __selections: [ApolloAPI.Selection] { [
                      .field("id", OctopusAPI.ID?.self),
                      .field("displayName", String?.self),
                      .field("fullName", String?.self),
                      .field("description", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("standingCharge", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var fullName: String? { __data["fullName"] }
                    public var description: String? { __data["description"] }
                    /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                    public var tariffCode: String? { __data["tariffCode"] }
                    public var productCode: String? { __data["productCode"] }
                    public var standingCharge: Double? { __data["standingCharge"] }
                  }

                  /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff.AsStandardTariff
                  ///
                  /// Parent Type: `StandardTariff`
                  public struct AsStandardTariff: OctopusAPI.InlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = GetInitialUserDetailsQuery.Data.Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff
                    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.StandardTariff }
                    public static var __selections: [ApolloAPI.Selection] { [
                      .field("id", OctopusAPI.ID?.self),
                      .field("displayName", String?.self),
                      .field("fullName", String?.self),
                      .field("description", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("unitRate", Double?.self),
                      .field("standingCharge", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var fullName: String? { __data["fullName"] }
                    public var description: String? { __data["description"] }
                    /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                    public var tariffCode: String? { __data["tariffCode"] }
                    public var productCode: String? { __data["productCode"] }
                    public var unitRate: Double? { __data["unitRate"] }
                    public var standingCharge: Double? { __data["standingCharge"] }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}