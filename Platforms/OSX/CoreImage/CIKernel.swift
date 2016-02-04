
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(OSX 10.4, *)
class CIKernel : NSObject {
  @available(OSX 10.4, *)
  class func kernelsWithString(string: String) -> [CIKernel]?
  @available(OSX 10.10, *)
  convenience init?(string: String)
  @available(OSX 10.4, *)
  var name: String { get }
  @available(OSX 10.4, *)
  func setROISelector(method: Selector)
  @available(OSX 10.11, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(OSX 10.11, *)
class CIColorKernel : CIKernel {
  @available(OSX 10.10, *)
  convenience init?(string: String)
  @available(OSX 10.11, *)
  func applyWithExtent(extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(OSX 10.11, *)
class CIWarpKernel : CIKernel {
  @available(OSX 10.10, *)
  convenience init?(string: String)
  @available(OSX 10.11, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}