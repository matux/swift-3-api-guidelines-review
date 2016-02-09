
@available(iOS 5.0, *)
class AVMediaSelectionGroup : Object, Copying {
  var options: [AVMediaSelectionOption] { get }
  @available(iOS 8.0, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOptionWith(propertyList plist: AnyObject) -> AVMediaSelectionOption?
  init()
  @available(iOS 5.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(iOS 6.0, *)
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withLocale locale: Locale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(iOS 5.0, *)
class AVMediaSelectionOption : Object, Copying {
  var mediaType: String { get }
  var mediaSubTypes: [Number] { get }
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool
  var isPlayable: Bool { get }
  @available(iOS 7.0, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataFor(format format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  @available(iOS 7.0, *)
  func displayName(locale: Locale) -> String
  @available(iOS 7.0, *)
  var displayName: String { get }
  init()
  @available(iOS 5.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
