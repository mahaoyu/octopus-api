// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SmartDataTelemetryQuery: GraphQLQuery {
  public static let operationName: String = "SmartDataTelemetry"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query SmartDataTelemetry($deviceId: String!, $timeGrouping: TelemetryGrouping, $startAt: DateTime!, $endAt: DateTime!) { smartMeterTelemetry( deviceId: $deviceId grouping: $timeGrouping start: $startAt end: $endAt ) { __typename readAt consumptionDelta demand } }"#
    ))

  public var deviceId: String
  public var timeGrouping: GraphQLNullable<GraphQLEnum<TelemetryGrouping>>
  public var startAt: DateTime
  public var endAt: DateTime

  public init(
    deviceId: String,
    timeGrouping: GraphQLNullable<GraphQLEnum<TelemetryGrouping>>,
    startAt: DateTime,
    endAt: DateTime
  ) {
    self.deviceId = deviceId
    self.timeGrouping = timeGrouping
    self.startAt = startAt
    self.endAt = endAt
  }

  public var __variables: Variables? { [
    "deviceId": deviceId,
    "timeGrouping": timeGrouping,
    "startAt": startAt,
    "endAt": endAt
  ] }

  public struct Data: OctopusAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("smartMeterTelemetry", [SmartMeterTelemetry?]?.self, arguments: [
        "deviceId": .variable("deviceId"),
        "grouping": .variable("timeGrouping"),
        "start": .variable("startAt"),
        "end": .variable("endAt")
      ]),
    ] }

    ///
    /// Query telemetry data collected by the CAD associated with the provided
    /// ESME or GSME device ID.
    ///
    /// If only the smart meter device ID is provided, the latest data
    /// available will be returned.
    ///
    /// Additionally including the range options (start, end, and grouping) will
    /// return the data for that time period, at the desired granularity.
    ///
    public var smartMeterTelemetry: [SmartMeterTelemetry?]? { __data["smartMeterTelemetry"] }

    /// SmartMeterTelemetry
    ///
    /// Parent Type: `SmartMeterTelemetryType`
    public struct SmartMeterTelemetry: OctopusAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { OctopusAPI.Objects.SmartMeterTelemetryType }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("readAt", OctopusAPI.DateTime?.self),
        .field("consumptionDelta", OctopusAPI.Decimal?.self),
        .field("demand", OctopusAPI.Decimal?.self),
      ] }

      /// The time this reading was taken.
      public var readAt: OctopusAPI.DateTime? { __data["readAt"] }
      /// Energy consumption intervals measured in Wh.
      public var consumptionDelta: OctopusAPI.Decimal? { __data["consumptionDelta"] }
      /// Energy being demanded by the meter measured in W.
      public var demand: OctopusAPI.Decimal? { __data["demand"] }
    }
  }
}
