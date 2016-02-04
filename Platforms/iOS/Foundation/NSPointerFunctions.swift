
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct NSPointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 6.0, *)
  static var StrongMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var OpaqueMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var MallocMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var MachVirtualMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var WeakMemory: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var ObjectPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var OpaquePersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var ObjectPointerPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var CStringPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var StructPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var IntegerPersonality: NSPointerFunctionsOptions { get }
  @available(iOS 6.0, *)
  static var CopyIn: NSPointerFunctionsOptions { get }
}
@available(iOS 6.0, *)
class NSPointerFunctions : NSObject, NSCopying {
  init(options: NSPointerFunctionsOptions)
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  convenience init()
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}