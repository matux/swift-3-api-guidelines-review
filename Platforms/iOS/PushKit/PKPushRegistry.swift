
@available(iOS 8.0, *)
let PKPushTypeVoIP: String
@available(iOS 9.0, *)
let PKPushTypeComplication: String
@available(iOS 8.0, *)
class PKPushRegistry : NSObject {
  weak var delegate: @sil_weak PKPushRegistryDelegate!
  var desiredPushTypes: Set<NSObject>!
  func pushTokenForType(type: String!) -> NSData!
  init!(queue: dispatch_queue_t!)
  init()
}
protocol PKPushRegistryDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func pushRegistry(registry: PKPushRegistry!, didUpdatePushCredentials credentials: PKPushCredentials!, forType type: String!)
  @available(iOS 8.0, *)
  func pushRegistry(registry: PKPushRegistry!, didReceiveIncomingPushWithPayload payload: PKPushPayload!, forType type: String!)
  @available(iOS 8.0, *)
  optional func pushRegistry(registry: PKPushRegistry!, didInvalidatePushTokenForType type: String!)
}