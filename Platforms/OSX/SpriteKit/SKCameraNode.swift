
@available(OSX 10.11, *)
class SKCameraNode : SKNode {
  func containsNode(node: SKNode) -> Bool
  func containedNodeSet() -> Set<SKNode>
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}