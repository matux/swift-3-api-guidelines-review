
@available(tvOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(tvOS 7.0, *)
  class func preferredFontForTextStyle(style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(familyName: String) -> [String]
  class func systemFontOfSize(fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(fontSize: CGFloat) -> UIFont
  @available(tvOS 8.2, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(tvOS 9.0, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(tvOS 4.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func fontWithSize(fontSize: CGFloat) -> UIFont
  @available(tvOS 7.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(tvOS 7.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(tvOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}