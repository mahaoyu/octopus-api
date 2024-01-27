// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// The account object can be one of several attached to a `Portfolio` (which usually has an `AccountUser` which is used to authenticate access to the `Portfolio`'s accounts). Typically a person has a single account attached to a portfolio and properties on the same account will appear on the same bill. Where separate bills are desired, multiple accounts  are created and added to the same portfolio of accounts.
  static let AccountType = ApolloAPI.Object(
    typename: "AccountType",
    implementedInterfaces: [Interfaces.AccountInterface.self]
  )
}