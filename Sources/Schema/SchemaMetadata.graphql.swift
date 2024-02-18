// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == OctopusAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == OctopusAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == OctopusAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == OctopusAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Query": return OctopusAPI.Objects.Query
    case "KrakenVersionType": return OctopusAPI.Objects.KrakenVersionType
    case "EnergyProductConnectionTypeConnection": return OctopusAPI.Objects.EnergyProductConnectionTypeConnection
    case "PageInfo": return OctopusAPI.Objects.PageInfo
    case "EnergyProductConnectionTypeEdge": return OctopusAPI.Objects.EnergyProductConnectionTypeEdge
    case "EnergyProductType": return OctopusAPI.Objects.EnergyProductType
    case "EnergyTariffConnectionTypeConnection": return OctopusAPI.Objects.EnergyTariffConnectionTypeConnection
    case "EnergyTariffConnectionTypeEdge": return OctopusAPI.Objects.EnergyTariffConnectionTypeEdge
    case "StandardTariff": return OctopusAPI.Objects.StandardTariff
    case "DayNightTariff": return OctopusAPI.Objects.DayNightTariff
    case "ThreeRateTariff": return OctopusAPI.Objects.ThreeRateTariff
    case "HalfHourlyTariff": return OctopusAPI.Objects.HalfHourlyTariff
    case "PrepayTariff": return OctopusAPI.Objects.PrepayTariff
    case "GasTariffType": return OctopusAPI.Objects.GasTariffType
    case "Mutation": return OctopusAPI.Objects.Mutation
    case "ObtainKrakenJSONWebToken": return OctopusAPI.Objects.ObtainKrakenJSONWebToken
    case "AccountUserType": return OctopusAPI.Objects.AccountUserType
    case "AccountType": return OctopusAPI.Objects.AccountType
    case "AccountUserRoleType": return OctopusAPI.Objects.AccountUserRoleType
    case "PropertyType": return OctopusAPI.Objects.PropertyType
    case "ElectricityMeterPointType": return OctopusAPI.Objects.ElectricityMeterPointType
    case "GasMeterPointType": return OctopusAPI.Objects.GasMeterPointType
    case "ElectricityMeterType": return OctopusAPI.Objects.ElectricityMeterType
    case "InkTag": return OctopusAPI.Objects.InkTag
    case "InkGenericMessage": return OctopusAPI.Objects.InkGenericMessage
    case "InkBucket": return OctopusAPI.Objects.InkBucket
    case "GasMeterType": return OctopusAPI.Objects.GasMeterType
    case "EmailEventType": return OctopusAPI.Objects.EmailEventType
    case "PrintEventType": return OctopusAPI.Objects.PrintEventType
    case "PrintMessageType": return OctopusAPI.Objects.PrintMessageType
    case "AccountFileAttachment": return OctopusAPI.Objects.AccountFileAttachment
    case "RestrictedElectricityAgreement": return OctopusAPI.Objects.RestrictedElectricityAgreement
    case "RestrictedGasAgreement": return OctopusAPI.Objects.RestrictedGasAgreement
    case "ElectricityAgreementType": return OctopusAPI.Objects.ElectricityAgreementType
    case "GasAgreementType": return OctopusAPI.Objects.GasAgreementType
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
