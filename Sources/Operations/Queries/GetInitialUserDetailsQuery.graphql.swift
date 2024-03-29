// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetInitialUserDetailsQuery: GraphQLQuery {
  public static let operationName: String = "GetInitialUserDetails"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetInitialUserDetails { viewer { __typename preferredName liveSecretKey accounts { __typename number } accountUserRoles { __typename id user { __typename id } account { __typename id brand number properties { __typename address postcode electricityMeterPoints { __typename id mpan gspGroupId meters(includeInactive: false) { __typename id serialNumber hasAndAllowsHhReadings smartDevices { __typename deviceId status serialNumber type model manufacturer } } status agreements(includeInactive: true, excludeFuture: false) { __typename id validFrom validTo agreedFrom agreedTo tariff { __typename ... on HalfHourlyTariff { id displayName description fullName tariffCode productCode standingCharge } ... on StandardTariff { id displayName description fullName tariffCode productCode unitRate standingCharge } ... on DayNightTariff { id displayName description fullName tariffCode productCode standingCharge dayRate nightRate } ... on ThreeRateTariff { id displayName description fullName tariffCode productCode standingCharge dayRate nightRate offPeakRate } ... on PrepayTariff { id displayName description fullName tariffCode productCode standingCharge unitRate } } } } gasMeterPoints { __typename id mprn meters { __typename id serialNumber meterType units correction readingFactor pulseValue fuelType consumptionUnits location manufacturedYear manufacturerCode modelName hasAndAllowsHhReadings smartDevices { __typename deviceId status serialNumber type model manufacturer } meterPoint { __typename confirmationReference currentDmSoq currentNdmSoq endUserCategory eucIdentifier exitCapacityChargeRate exitZone formulaYearSmpAq formulaYearSmpSoq hasOpenClosingReadDispute hasOpenOpeningReadDispute id igtCheckedAt igtIdentifier ldz ldzCapacityChargeRate ldzCommodityChargeRate ldzCustomerChargeRate marketCategory marketSectorCode meterOwnershipType meterReadBatchFrequency mprn mrfType newSupplierId nominationShipperReference nominationType ntsExitCommodityChargeRate oldSupplierId requiresEnrolment requiresWithdrawal smartStartDate status statusUpdatedAt supplyClass supplyEndDate supplyPointCategory targetSsd xoserveStatus } } agreements(includeInactive: true, excludeFuture: false) { __typename id validFrom validTo agreedFrom agreedTo tariff { __typename ... on GasTariffType { id displayName description fullName tariffCode productCode standingCharge } } } } } } } } }"#
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
              .field("gasMeterPoints", [GasMeterPoint?]?.self),
            ] }

            /// The address of the property, formatted into a single string
            public var address: String? { __data["address"] }
            public var postcode: String { __data["postcode"] }
            /// Retrieve the details of an electricity meter-point.
            public var electricityMeterPoints: [ElectricityMeterPoint?]? { __data["electricityMeterPoints"] }
            /// Retrieve the details of a gas meter-point.
            public var gasMeterPoints: [GasMeterPoint?]? { __data["gasMeterPoints"] }

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
                .field("meters", [Meter?]?.self, arguments: ["includeInactive": false]),
                .field("status", String?.self),
                .field("agreements", [Agreement?]?.self, arguments: [
                  "includeInactive": true,
                  "excludeFuture": false
                ]),
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
                  .field("hasAndAllowsHhReadings", Bool?.self),
                  .field("smartDevices", [SmartDevice?]?.self),
                ] }

                public var id: OctopusAPI.ID { __data["id"] }
                public var serialNumber: String { __data["serialNumber"] }
                /// Returns if the meter has and allows half hourly readings
                public var hasAndAllowsHhReadings: Bool? { __data["hasAndAllowsHhReadings"] }
                public var smartDevices: [SmartDevice?]? { __data["smartDevices"] }

                /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Meter.SmartDevice
                ///
                /// Parent Type: `SmartMeterDeviceType`
                public struct SmartDevice: OctopusAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.SmartMeterDeviceType }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("__typename", String.self),
                    .field("deviceId", String.self),
                    .field("status", GraphQLEnum<OctopusAPI.DeviceStatus>.self),
                    .field("serialNumber", String.self),
                    .field("type", GraphQLEnum<OctopusAPI.DeviceType>?.self),
                    .field("model", String.self),
                    .field("manufacturer", String.self),
                  ] }

                  public var deviceId: String { __data["deviceId"] }
                  public var status: GraphQLEnum<OctopusAPI.DeviceStatus> { __data["status"] }
                  public var serialNumber: String { __data["serialNumber"] }
                  public var type: GraphQLEnum<OctopusAPI.DeviceType>? { __data["type"] }
                  public var model: String { __data["model"] }
                  public var manufacturer: String { __data["manufacturer"] }
                }
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
                    .inlineFragment(AsDayNightTariff.self),
                    .inlineFragment(AsThreeRateTariff.self),
                    .inlineFragment(AsPrepayTariff.self),
                  ] }

                  public var asHalfHourlyTariff: AsHalfHourlyTariff? { _asInlineFragment() }
                  public var asStandardTariff: AsStandardTariff? { _asInlineFragment() }
                  public var asDayNightTariff: AsDayNightTariff? { _asInlineFragment() }
                  public var asThreeRateTariff: AsThreeRateTariff? { _asInlineFragment() }
                  public var asPrepayTariff: AsPrepayTariff? { _asInlineFragment() }

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
                      .field("description", String?.self),
                      .field("fullName", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("standingCharge", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var description: String? { __data["description"] }
                    public var fullName: String? { __data["fullName"] }
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
                      .field("description", String?.self),
                      .field("fullName", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("unitRate", Double?.self),
                      .field("standingCharge", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var description: String? { __data["description"] }
                    public var fullName: String? { __data["fullName"] }
                    /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                    public var tariffCode: String? { __data["tariffCode"] }
                    public var productCode: String? { __data["productCode"] }
                    public var unitRate: Double? { __data["unitRate"] }
                    public var standingCharge: Double? { __data["standingCharge"] }
                  }

                  /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff.AsDayNightTariff
                  ///
                  /// Parent Type: `DayNightTariff`
                  public struct AsDayNightTariff: OctopusAPI.InlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = GetInitialUserDetailsQuery.Data.Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff
                    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.DayNightTariff }
                    public static var __selections: [ApolloAPI.Selection] { [
                      .field("id", OctopusAPI.ID?.self),
                      .field("displayName", String?.self),
                      .field("description", String?.self),
                      .field("fullName", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("standingCharge", Double?.self),
                      .field("dayRate", Double?.self),
                      .field("nightRate", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var description: String? { __data["description"] }
                    public var fullName: String? { __data["fullName"] }
                    /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                    public var tariffCode: String? { __data["tariffCode"] }
                    public var productCode: String? { __data["productCode"] }
                    public var standingCharge: Double? { __data["standingCharge"] }
                    public var dayRate: Double? { __data["dayRate"] }
                    public var nightRate: Double? { __data["nightRate"] }
                  }

                  /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff.AsThreeRateTariff
                  ///
                  /// Parent Type: `ThreeRateTariff`
                  public struct AsThreeRateTariff: OctopusAPI.InlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = GetInitialUserDetailsQuery.Data.Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff
                    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.ThreeRateTariff }
                    public static var __selections: [ApolloAPI.Selection] { [
                      .field("id", OctopusAPI.ID?.self),
                      .field("displayName", String?.self),
                      .field("description", String?.self),
                      .field("fullName", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("standingCharge", Double?.self),
                      .field("dayRate", Double?.self),
                      .field("nightRate", Double?.self),
                      .field("offPeakRate", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var description: String? { __data["description"] }
                    public var fullName: String? { __data["fullName"] }
                    /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                    public var tariffCode: String? { __data["tariffCode"] }
                    public var productCode: String? { __data["productCode"] }
                    public var standingCharge: Double? { __data["standingCharge"] }
                    public var dayRate: Double? { __data["dayRate"] }
                    public var nightRate: Double? { __data["nightRate"] }
                    public var offPeakRate: Double? { __data["offPeakRate"] }
                  }

                  /// Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff.AsPrepayTariff
                  ///
                  /// Parent Type: `PrepayTariff`
                  public struct AsPrepayTariff: OctopusAPI.InlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = GetInitialUserDetailsQuery.Data.Viewer.AccountUserRole.Account.Property.ElectricityMeterPoint.Agreement.Tariff
                    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.PrepayTariff }
                    public static var __selections: [ApolloAPI.Selection] { [
                      .field("id", OctopusAPI.ID?.self),
                      .field("displayName", String?.self),
                      .field("description", String?.self),
                      .field("fullName", String?.self),
                      .field("tariffCode", String?.self),
                      .field("productCode", String?.self),
                      .field("standingCharge", Double?.self),
                      .field("unitRate", Double?.self),
                    ] }

                    public var id: OctopusAPI.ID? { __data["id"] }
                    public var displayName: String? { __data["displayName"] }
                    public var description: String? { __data["description"] }
                    public var fullName: String? { __data["fullName"] }
                    /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                    public var tariffCode: String? { __data["tariffCode"] }
                    public var productCode: String? { __data["productCode"] }
                    public var standingCharge: Double? { __data["standingCharge"] }
                    public var unitRate: Double? { __data["unitRate"] }
                  }
                }
              }
            }

            /// Viewer.AccountUserRole.Account.Property.GasMeterPoint
            ///
            /// Parent Type: `GasMeterPointType`
            public struct GasMeterPoint: OctopusAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasMeterPointType }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("id", OctopusAPI.ID.self),
                .field("mprn", String?.self),
                .field("meters", [Meter?]?.self),
                .field("agreements", [Agreement?]?.self, arguments: [
                  "includeInactive": true,
                  "excludeFuture": false
                ]),
              ] }

              public var id: OctopusAPI.ID { __data["id"] }
              public var mprn: String? { __data["mprn"] }
              public var meters: [Meter?]? { __data["meters"] }
              /// A list of gas agreements belonging to an account that is linked to the viewer. Filters out expired agreements by default.
              public var agreements: [Agreement?]? { __data["agreements"] }

              /// Viewer.AccountUserRole.Account.Property.GasMeterPoint.Meter
              ///
              /// Parent Type: `GasMeterType`
              public struct Meter: OctopusAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasMeterType }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("id", OctopusAPI.ID.self),
                  .field("serialNumber", String.self),
                  .field("meterType", String.self),
                  .field("units", Int.self),
                  .field("correction", Double?.self),
                  .field("readingFactor", OctopusAPI.Decimal?.self),
                  .field("pulseValue", OctopusAPI.Decimal?.self),
                  .field("fuelType", String?.self),
                  .field("consumptionUnits", String?.self),
                  .field("location", String.self),
                  .field("manufacturedYear", Int?.self),
                  .field("manufacturerCode", String.self),
                  .field("modelName", String.self),
                  .field("hasAndAllowsHhReadings", Bool?.self),
                  .field("smartDevices", [SmartDevice?]?.self),
                  .field("meterPoint", MeterPoint.self),
                ] }

                public var id: OctopusAPI.ID { __data["id"] }
                public var serialNumber: String { __data["serialNumber"] }
                public var meterType: String { __data["meterType"] }
                public var units: Int { __data["units"] }
                public var correction: Double? { __data["correction"] }
                public var readingFactor: OctopusAPI.Decimal? { __data["readingFactor"] }
                public var pulseValue: OctopusAPI.Decimal? { __data["pulseValue"] }
                /// The type of fuel this meter uses.
                public var fuelType: String? { __data["fuelType"] }
                /// The units of consumption for a smart meter.
                public var consumptionUnits: String? { __data["consumptionUnits"] }
                public var location: String { __data["location"] }
                public var manufacturedYear: Int? { __data["manufacturedYear"] }
                public var manufacturerCode: String { __data["manufacturerCode"] }
                public var modelName: String { __data["modelName"] }
                /// Returns if the meter has and allows half hourly readings
                public var hasAndAllowsHhReadings: Bool? { __data["hasAndAllowsHhReadings"] }
                public var smartDevices: [SmartDevice?]? { __data["smartDevices"] }
                public var meterPoint: MeterPoint { __data["meterPoint"] }

                /// Viewer.AccountUserRole.Account.Property.GasMeterPoint.Meter.SmartDevice
                ///
                /// Parent Type: `SmartMeterDeviceType`
                public struct SmartDevice: OctopusAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.SmartMeterDeviceType }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("__typename", String.self),
                    .field("deviceId", String.self),
                    .field("status", GraphQLEnum<OctopusAPI.DeviceStatus>.self),
                    .field("serialNumber", String.self),
                    .field("type", GraphQLEnum<OctopusAPI.DeviceType>?.self),
                    .field("model", String.self),
                    .field("manufacturer", String.self),
                  ] }

                  public var deviceId: String { __data["deviceId"] }
                  public var status: GraphQLEnum<OctopusAPI.DeviceStatus> { __data["status"] }
                  public var serialNumber: String { __data["serialNumber"] }
                  public var type: GraphQLEnum<OctopusAPI.DeviceType>? { __data["type"] }
                  public var model: String { __data["model"] }
                  public var manufacturer: String { __data["manufacturer"] }
                }

                /// Viewer.AccountUserRole.Account.Property.GasMeterPoint.Meter.MeterPoint
                ///
                /// Parent Type: `GasMeterPointType`
                public struct MeterPoint: OctopusAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasMeterPointType }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("__typename", String.self),
                    .field("confirmationReference", Int?.self),
                    .field("currentDmSoq", Int?.self),
                    .field("currentNdmSoq", Int?.self),
                    .field("endUserCategory", Int?.self),
                    .field("eucIdentifier", String?.self),
                    .field("exitCapacityChargeRate", OctopusAPI.Decimal?.self),
                    .field("exitZone", String.self),
                    .field("formulaYearSmpAq", Int?.self),
                    .field("formulaYearSmpSoq", Int?.self),
                    .field("hasOpenClosingReadDispute", Bool.self),
                    .field("hasOpenOpeningReadDispute", Bool.self),
                    .field("id", OctopusAPI.ID.self),
                    .field("igtCheckedAt", OctopusAPI.DateTime?.self),
                    .field("igtIdentifier", String.self),
                    .field("ldz", String.self),
                    .field("ldzCapacityChargeRate", OctopusAPI.Decimal?.self),
                    .field("ldzCommodityChargeRate", OctopusAPI.Decimal?.self),
                    .field("ldzCustomerChargeRate", OctopusAPI.Decimal?.self),
                    .field("marketCategory", GraphQLEnum<OctopusAPI.GasMeterPointMarketCategory>?.self),
                    .field("marketSectorCode", GraphQLEnum<OctopusAPI.GasMeterPointMarketSectorCode>?.self),
                    .field("meterOwnershipType", GraphQLEnum<OctopusAPI.GasMeterPointMeterOwnershipType>?.self),
                    .field("meterReadBatchFrequency", String.self),
                    .field("mprn", String?.self),
                    .field("mrfType", String.self),
                    .field("newSupplierId", String?.self),
                    .field("nominationShipperReference", String.self),
                    .field("nominationType", String.self),
                    .field("ntsExitCommodityChargeRate", OctopusAPI.Decimal?.self),
                    .field("oldSupplierId", String?.self),
                    .field("requiresEnrolment", Bool.self),
                    .field("requiresWithdrawal", Bool.self),
                    .field("smartStartDate", OctopusAPI.Date?.self),
                    .field("status", String?.self),
                    .field("statusUpdatedAt", OctopusAPI.DateTime?.self),
                    .field("supplyClass", Int.self),
                    .field("supplyEndDate", OctopusAPI.Date?.self),
                    .field("supplyPointCategory", String.self),
                    .field("targetSsd", OctopusAPI.Date?.self),
                    .field("xoserveStatus", String?.self),
                  ] }

                  public var confirmationReference: Int? { __data["confirmationReference"] }
                  /// Rolling SOQ
                  public var currentDmSoq: Int? { __data["currentDmSoq"] }
                  /// Rolling SOQ
                  public var currentNdmSoq: Int? { __data["currentNdmSoq"] }
                  public var endUserCategory: Int? { __data["endUserCategory"] }
                  public var eucIdentifier: String? { __data["eucIdentifier"] }
                  public var exitCapacityChargeRate: OctopusAPI.Decimal? { __data["exitCapacityChargeRate"] }
                  public var exitZone: String { __data["exitZone"] }
                  /// AQ fixed for year
                  public var formulaYearSmpAq: Int? { __data["formulaYearSmpAq"] }
                  /// SOQ fixed for year
                  public var formulaYearSmpSoq: Int? { __data["formulaYearSmpSoq"] }
                  public var hasOpenClosingReadDispute: Bool { __data["hasOpenClosingReadDispute"] }
                  public var hasOpenOpeningReadDispute: Bool { __data["hasOpenOpeningReadDispute"] }
                  public var id: OctopusAPI.ID { __data["id"] }
                  public var igtCheckedAt: OctopusAPI.DateTime? { __data["igtCheckedAt"] }
                  public var igtIdentifier: String { __data["igtIdentifier"] }
                  /// Local distribution zone - Distribution charges are based upon this
                  public var ldz: String { __data["ldz"] }
                  public var ldzCapacityChargeRate: OctopusAPI.Decimal? { __data["ldzCapacityChargeRate"] }
                  public var ldzCommodityChargeRate: OctopusAPI.Decimal? { __data["ldzCommodityChargeRate"] }
                  public var ldzCustomerChargeRate: OctopusAPI.Decimal? { __data["ldzCustomerChargeRate"] }
                  public var marketCategory: GraphQLEnum<OctopusAPI.GasMeterPointMarketCategory>? { __data["marketCategory"] }
                  public var marketSectorCode: GraphQLEnum<OctopusAPI.GasMeterPointMarketSectorCode>? { __data["marketSectorCode"] }
                  public var meterOwnershipType: GraphQLEnum<OctopusAPI.GasMeterPointMeterOwnershipType>? { __data["meterOwnershipType"] }
                  public var meterReadBatchFrequency: String { __data["meterReadBatchFrequency"] }
                  public var mprn: String? { __data["mprn"] }
                  public var mrfType: String { __data["mrfType"] }
                  public var newSupplierId: String? { __data["newSupplierId"] }
                  public var nominationShipperReference: String { __data["nominationShipperReference"] }
                  public var nominationType: String { __data["nominationType"] }
                  public var ntsExitCommodityChargeRate: OctopusAPI.Decimal? { __data["ntsExitCommodityChargeRate"] }
                  public var oldSupplierId: String? { __data["oldSupplierId"] }
                  public var requiresEnrolment: Bool { __data["requiresEnrolment"] }
                  public var requiresWithdrawal: Bool { __data["requiresWithdrawal"] }
                  public var smartStartDate: OctopusAPI.Date? { __data["smartStartDate"] }
                  public var status: String? { __data["status"] }
                  public var statusUpdatedAt: OctopusAPI.DateTime? { __data["statusUpdatedAt"] }
                  public var supplyClass: Int { __data["supplyClass"] }
                  public var supplyEndDate: OctopusAPI.Date? { __data["supplyEndDate"] }
                  public var supplyPointCategory: String { __data["supplyPointCategory"] }
                  public var targetSsd: OctopusAPI.Date? { __data["targetSsd"] }
                  /// Industry status code
                  public var xoserveStatus: String? { __data["xoserveStatus"] }
                }
              }

              /// Viewer.AccountUserRole.Account.Property.GasMeterPoint.Agreement
              ///
              /// Parent Type: `GasAgreementType`
              public struct Agreement: OctopusAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasAgreementType }
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

                /// Viewer.AccountUserRole.Account.Property.GasMeterPoint.Agreement.Tariff
                ///
                /// Parent Type: `GasTariffType`
                public struct Tariff: OctopusAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.GasTariffType }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("__typename", String.self),
                    .field("id", OctopusAPI.ID?.self),
                    .field("displayName", String?.self),
                    .field("description", String?.self),
                    .field("fullName", String?.self),
                    .field("tariffCode", String?.self),
                    .field("productCode", String?.self),
                    .field("standingCharge", Double?.self),
                  ] }

                  public var id: OctopusAPI.ID? { __data["id"] }
                  public var displayName: String? { __data["displayName"] }
                  public var description: String? { __data["description"] }
                  public var fullName: String? { __data["fullName"] }
                  /// Describes a particular tariff by combining the product code, number of rates, available from date and GSP code.
                  public var tariffCode: String? { __data["tariffCode"] }
                  public var productCode: String? { __data["productCode"] }
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
