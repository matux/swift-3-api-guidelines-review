
class CAEmitterLayer : CALayer {
  var emitterCells: [CAEmitterCell]?
  var birthRate: Float
  var lifetime: Float
  var emitterPosition: CGPoint
  var emitterZPosition: CGFloat
  var emitterSize: CGSize
  var emitterDepth: CGFloat
  var emitterShape: String
  var emitterMode: String
  var renderMode: String
  var preservesDepth: Bool
  var velocity: Float
  var scale: Float
  var spin: Float
  var seed: UInt32
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.6, *)
let kCAEmitterLayerPoint: String
@available(OSX 10.6, *)
let kCAEmitterLayerLine: String
@available(OSX 10.6, *)
let kCAEmitterLayerRectangle: String
@available(OSX 10.6, *)
let kCAEmitterLayerCuboid: String
@available(OSX 10.6, *)
let kCAEmitterLayerCircle: String
@available(OSX 10.6, *)
let kCAEmitterLayerSphere: String
@available(OSX 10.6, *)
let kCAEmitterLayerPoints: String
@available(OSX 10.6, *)
let kCAEmitterLayerOutline: String
@available(OSX 10.6, *)
let kCAEmitterLayerSurface: String
@available(OSX 10.6, *)
let kCAEmitterLayerVolume: String
@available(OSX 10.6, *)
let kCAEmitterLayerUnordered: String
@available(OSX 10.6, *)
let kCAEmitterLayerOldestFirst: String
@available(OSX 10.6, *)
let kCAEmitterLayerOldestLast: String
@available(OSX 10.6, *)
let kCAEmitterLayerBackToFront: String
@available(OSX 10.6, *)
let kCAEmitterLayerAdditive: String