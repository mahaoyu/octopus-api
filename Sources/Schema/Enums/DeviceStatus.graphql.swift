// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// An enumeration.
public enum DeviceStatus: String, EnumType {
  /// Pending
  case pending = "PENDING"
  /// Whitelisted
  case whitelisted = "WHITELISTED"
  /// Installed but not commissioned
  case installedNotCommissioned = "INSTALLED_NOT_COMMISSIONED"
  /// Commissioned
  case commissioned = "COMMISSIONED"
  /// Decommissioned
  case decommissioned = "DECOMMISSIONED"
  /// Withdrawn
  case withdrawn = "WITHDRAWN"
  /// Suspended
  case suspended = "SUSPENDED"
  /// In recovery
  case recovery = "RECOVERY"
  /// Recovered
  case recovered = "RECOVERED"
  /// Not Applicable
  case notApplicable = "NOT_APPLICABLE"
}
