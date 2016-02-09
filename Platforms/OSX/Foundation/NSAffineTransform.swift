
struct AffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class AffineTransform : Object, Copying, SecureCoding {
  convenience init(transform: AffineTransform)
  init()
  func translateX(by deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotateBy(degrees angle: CGFloat)
  func rotateBy(radians angle: CGFloat)
  func scaleBy(scale: CGFloat)
  func scaleX(by scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func append(transform: AffineTransform)
  func prependTransform(transform: AffineTransform)
  func transform(aPoint: Point) -> Point
  func transform(aSize: Size) -> Size
  var transformStruct: AffineTransformStruct
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
