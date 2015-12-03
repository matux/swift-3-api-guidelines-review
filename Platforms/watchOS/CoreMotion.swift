
struct CMAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(watchOS 2.0, *)
class CMAccelerometerData : CMLogItem {
  var acceleration: CMAcceleration { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
typealias CMAltitudeHandler = (CMAltitudeData?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMAltimeter : NSObject {
  class func isRelativeAltitudeAvailable() -> Bool
  func startRelativeAltitudeUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
  init()
}
@available(watchOS 2.0, *)
class CMAltitudeData : CMLogItem {
  var relativeAltitude: NSNumber { get }
  var pressure: NSNumber { get }
  init()
  init?(coder aDecoder: NSCoder)
}
struct CMRotationMatrix {
  var m11: Double
  var m12: Double
  var m13: Double
  var m21: Double
  var m22: Double
  var m23: Double
  var m31: Double
  var m32: Double
  var m33: Double
  init()
  init(m11: Double, m12: Double, m13: Double, m21: Double, m22: Double, m23: Double, m31: Double, m32: Double, m33: Double)
}
struct CMQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}
struct CMAttitudeReferenceFrame : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var XArbitraryZVertical: CMAttitudeReferenceFrame { get }
  static var XArbitraryCorrectedZVertical: CMAttitudeReferenceFrame { get }
  static var XMagneticNorthZVertical: CMAttitudeReferenceFrame { get }
  static var XTrueNorthZVertical: CMAttitudeReferenceFrame { get }
}
@available(watchOS 2.0, *)
class CMAttitude : NSObject, NSCopying, NSSecureCoding {
  var roll: Double { get }
  var pitch: Double { get }
  var yaw: Double { get }
  var rotationMatrix: CMRotationMatrix { get }
  var quaternion: CMQuaternion { get }
  func multiplyByInverseOfAttitude(attitude: CMAttitude)
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct CMMagneticFieldCalibrationAccuracy : RawRepresentable, Equatable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var CMMagneticFieldCalibrationAccuracyUncalibrated: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyLow: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyMedium: CMMagneticFieldCalibrationAccuracy { get }
var CMMagneticFieldCalibrationAccuracyHigh: CMMagneticFieldCalibrationAccuracy { get }
struct CMCalibratedMagneticField {
  var field: CMMagneticField
  var accuracy: CMMagneticFieldCalibrationAccuracy
  init()
  init(field: CMMagneticField, accuracy: CMMagneticFieldCalibrationAccuracy)
}
@available(watchOS 2.0, *)
class CMDeviceMotion : CMLogItem {
  var attitude: CMAttitude { get }
  var rotationRate: CMRotationRate { get }
  var gravity: CMAcceleration { get }
  var userAcceleration: CMAcceleration { get }
  @available(watchOS 2.0, *)
  var magneticField: CMCalibratedMagneticField { get }
  init()
  init?(coder aDecoder: NSCoder)
}
struct CMError : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CMErrorNULL: CMError { get }
var CMErrorDeviceRequiresMovement: CMError { get }
var CMErrorTrueNorthNotAvailable: CMError { get }
var CMErrorUnknown: CMError { get }
var CMErrorMotionActivityNotAvailable: CMError { get }
var CMErrorMotionActivityNotAuthorized: CMError { get }
var CMErrorMotionActivityNotEntitled: CMError { get }
var CMErrorInvalidParameter: CMError { get }
var CMErrorInvalidAction: CMError { get }
var CMErrorNotAvailable: CMError { get }
var CMErrorNotEntitled: CMError { get }
var CMErrorNotAuthorized: CMError { get }
@available(watchOS 2.0, *)
let CMErrorDomain: String
struct CMRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(watchOS 2.0, *)
class CMGyroData : CMLogItem {
  var rotationRate: CMRotationRate { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class CMLogItem : NSObject, NSSecureCoding, NSCopying {
  var timestamp: NSTimeInterval { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
struct CMMagneticField {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
@available(watchOS 2.0, *)
class CMMagnetometerData : CMLogItem {
  var magneticField: CMMagneticField { get }
  init()
  init?(coder aDecoder: NSCoder)
}
enum CMMotionActivityConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(watchOS 2.0, *)
class CMMotionActivity : CMLogItem {
  var confidence: CMMotionActivityConfidence { get }
  var startDate: NSDate { get }
  var unknown: Bool { get }
  var stationary: Bool { get }
  var walking: Bool { get }
  var running: Bool { get }
  var automotive: Bool { get }
  @available(watchOS 2.0, *)
  var cycling: Bool { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(watchOS 2.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMMotionActivityManager : NSObject {
  class func isActivityAvailable() -> Bool
  func queryActivityStartingFromDate(start: NSDate, toDate end: NSDate, toQueue queue: NSOperationQueue, withHandler handler: CMMotionActivityQueryHandler)
  func startActivityUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMMotionActivityHandler)
  func stopActivityUpdates()
  init()
}
typealias CMAccelerometerHandler = (CMAccelerometerData?, NSError?) -> Void
typealias CMGyroHandler = (CMGyroData?, NSError?) -> Void
typealias CMDeviceMotionHandler = (CMDeviceMotion?, NSError?) -> Void
@available(watchOS 2.0, *)
typealias CMMagnetometerHandler = (CMMagnetometerData?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMMotionManager : NSObject {
  var accelerometerUpdateInterval: NSTimeInterval
  var accelerometerAvailable: Bool { get }
  var accelerometerActive: Bool { get }
  var accelerometerData: CMAccelerometerData? { get }
  func startAccelerometerUpdates()
  func startAccelerometerUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMAccelerometerHandler)
  func stopAccelerometerUpdates()
  var gyroUpdateInterval: NSTimeInterval
  var gyroAvailable: Bool { get }
  var gyroActive: Bool { get }
  var gyroData: CMGyroData? { get }
  func startGyroUpdates()
  func startGyroUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMGyroHandler)
  func stopGyroUpdates()
  @available(watchOS 2.0, *)
  var magnetometerUpdateInterval: NSTimeInterval
  @available(watchOS 2.0, *)
  var magnetometerAvailable: Bool { get }
  @available(watchOS 2.0, *)
  var magnetometerActive: Bool { get }
  @available(watchOS 2.0, *)
  var magnetometerData: CMMagnetometerData? { get }
  @available(watchOS 2.0, *)
  func startMagnetometerUpdates()
  @available(watchOS 2.0, *)
  func startMagnetometerUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMMagnetometerHandler)
  @available(watchOS 2.0, *)
  func stopMagnetometerUpdates()
  var deviceMotionUpdateInterval: NSTimeInterval
  @available(watchOS 2.0, *)
  class func availableAttitudeReferenceFrames() -> CMAttitudeReferenceFrame
  @available(watchOS 2.0, *)
  var attitudeReferenceFrame: CMAttitudeReferenceFrame { get }
  var deviceMotionAvailable: Bool { get }
  var deviceMotionActive: Bool { get }
  var deviceMotion: CMDeviceMotion? { get }
  func startDeviceMotionUpdates()
  func startDeviceMotionUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMDeviceMotionHandler)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdatesUsingReferenceFrame(referenceFrame: CMAttitudeReferenceFrame)
  @available(watchOS 2.0, *)
  func startDeviceMotionUpdatesUsingReferenceFrame(referenceFrame: CMAttitudeReferenceFrame, toQueue queue: NSOperationQueue, withHandler handler: CMDeviceMotionHandler)
  func stopDeviceMotionUpdates()
  @available(watchOS 2.0, *)
  var showsDeviceMovementDisplay: Bool
  init()
}
@available(watchOS 2.0, *)
class CMPedometerData : NSObject, NSSecureCoding, NSCopying {
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  var numberOfSteps: NSNumber { get }
  var distance: NSNumber? { get }
  var floorsAscended: NSNumber? { get }
  var floorsDescended: NSNumber? { get }
  @available(watchOS 2.0, *)
  var currentPace: NSNumber? { get }
  @available(watchOS 2.0, *)
  var currentCadence: NSNumber? { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias CMPedometerHandler = (CMPedometerData?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMPedometer : NSObject {
  class func isStepCountingAvailable() -> Bool
  class func isDistanceAvailable() -> Bool
  class func isFloorCountingAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isPaceAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isCadenceAvailable() -> Bool
  func queryPedometerDataFromDate(start: NSDate, toDate end: NSDate, withHandler handler: CMPedometerHandler)
  func startPedometerUpdatesFromDate(start: NSDate, withHandler handler: CMPedometerHandler)
  func stopPedometerUpdates()
  init()
}
@available(watchOS 2.0, *)
class CMRecordedAccelerometerData : CMAccelerometerData {
  var identifier: UInt64 { get }
  var startDate: NSDate { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class CMSensorDataList : NSObject, NSFastEnumeration {
  init()
  @available(watchOS 2.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(watchOS 2.0, *)
class CMSensorRecorder : NSObject {
  class func isAccelerometerRecordingAvailable() -> Bool
  class func isAuthorizedForRecording() -> Bool
  func accelerometerDataFromDate(fromDate: NSDate, toDate: NSDate) -> CMSensorDataList?
  func recordAccelerometerForDuration(duration: NSTimeInterval)
  init()
}
