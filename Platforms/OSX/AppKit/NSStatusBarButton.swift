
@available(OSX 10.10, *)
class NSStatusBarButton : NSButton {
  var appearsDisabled: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}