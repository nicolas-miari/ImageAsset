import Asset
import Foundation
import UniqueIdentifierProvider

public class ImageAsset: BinaryResourceAsset, Codable {

  /// User-facing name of the asset in the editor.
  public var name: String

  /// Uniquely identifies the asset within the library that contains it.
  public let identifier: String

  /// Uniquely identifies the binary resource (image data) that the asset represents.
  public let binaryResourceIdentifier: String

  init(name: String, resourceIdentifier: String, identifierProvider: any UniqueIdentifierProvider) throws {
    self.name = name
    self.identifier = try identifierProvider.newIdentifier()
    self.binaryResourceIdentifier = resourceIdentifier
  }
}
