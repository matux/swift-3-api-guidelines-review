
@available(iOS 4.0, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(iOS 4.0, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampForTime(time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  var trackID: CMPersistentTrackID
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String?
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(volume: Float, atTime time: CMTime)
  init()
}