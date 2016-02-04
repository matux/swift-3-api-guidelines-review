
@available(iOS 4.2, *)
class UIPrintFormatter : NSObject, NSCopying {
  weak var printPageRenderer: @sil_weak UIPrintPageRenderer? { get }
  func removeFromPrintPageRenderer()
  var maximumContentHeight: CGFloat
  var maximumContentWidth: CGFloat
  var contentInsets: UIEdgeInsets
  var perPageContentInsets: UIEdgeInsets
  var startPage: Int
  var pageCount: Int { get }
  func rectForPageAtIndex(pageIndex: Int) -> CGRect
  func drawInRect(rect: CGRect, forPageAtIndex pageIndex: Int)
  init()
  @available(iOS 4.2, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 4.2, *)
class UISimpleTextPrintFormatter : UIPrintFormatter {
  init(text: String)
  @available(iOS 7.0, *)
  init(attributedText: NSAttributedString)
  var text: String?
  @available(iOS 7.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var font: UIFont?
  var color: UIColor?
  var textAlignment: NSTextAlignment
  init()
}
@available(iOS 4.2, *)
class UIMarkupTextPrintFormatter : UIPrintFormatter {
  init(markupText: String)
  var markupText: String?
  init()
}
@available(iOS 4.2, *)
class UIViewPrintFormatter : UIPrintFormatter {
  var view: UIView { get }
  init()
}
extension UIView {
  func viewPrintFormatter() -> UIViewPrintFormatter
  func drawRect(rect: CGRect, forViewPrintFormatter formatter: UIViewPrintFormatter)
}