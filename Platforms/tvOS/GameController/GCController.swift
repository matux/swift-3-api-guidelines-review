
let GCControllerDidConnectNotification: String
let GCControllerDidDisconnectNotification: String
@available(tvOS 9.0, *)
class GCEventViewController : UIViewController {
  var controllerUserInteractionEnabled: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum GCControllerPlayerIndex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case IndexUnset
  case Index1
  case Index2
  case Index3
  case Index4
}
@available(tvOS 7.0, *)
class GCController : NSObject {
  var controllerPausedHandler: ((GCController) -> Void)?
  var handlerQueue: dispatch_queue_t
  var vendorName: String? { get }
  var attachedToDevice: Bool { get }
  var playerIndex: GCControllerPlayerIndex
  var gamepad: GCGamepad? { get }
  var microGamepad: GCMicroGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }
  @available(tvOS 8.0, *)
  var motion: GCMotion? { get }
  class func controllers() -> [GCController]
  class func startWirelessControllerDiscoveryWithCompletionHandler(completionHandler: (() -> Void)?)
  class func stopWirelessControllerDiscovery()
  init()
}