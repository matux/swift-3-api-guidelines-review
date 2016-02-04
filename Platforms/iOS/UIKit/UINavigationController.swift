
enum UINavigationControllerOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Push
  case Pop
}
let UINavigationControllerHideShowBarDuration: CGFloat
@available(iOS 2.0, *)
class UINavigationController : UIViewController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(viewController: UIViewController, animated: Bool)
  func popViewControllerAnimated(animated: Bool) -> UIViewController?
  func popToViewController(viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(iOS 3.0, *)
  func setViewControllers(viewControllers: [UIViewController], animated: Bool)
  var navigationBarHidden: Bool
  func setNavigationBarHidden(hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  @available(iOS 3.0, *)
  var toolbarHidden: Bool
  @available(iOS 3.0, *)
  func setToolbarHidden(hidden: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var toolbar: UIToolbar! { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  @available(iOS 7.0, *)
  var interactivePopGestureRecognizer: UIGestureRecognizer? { get }
  @available(iOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  @available(iOS 8.0, *)
  var hidesBarsWhenKeyboardAppears: Bool
  @available(iOS 8.0, *)
  var hidesBarsOnSwipe: Bool
  @available(iOS 8.0, *)
  var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer { get }
  @available(iOS 8.0, *)
  var hidesBarsWhenVerticallyCompact: Bool
  @available(iOS 8.0, *)
  var hidesBarsOnTap: Bool
  @available(iOS 8.0, *)
  unowned(unsafe) var barHideOnTapGestureRecognizer: @sil_unmanaged UITapGestureRecognizer { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool)
  @available(iOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool)
  @available(iOS 7.0, *)
  optional func navigationControllerSupportedInterfaceOrientations(navigationController: UINavigationController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func navigationControllerPreferredInterfaceOrientationForPresentation(navigationController: UINavigationController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var hidesBottomBarWhenPushed: Bool
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
  @available(iOS 3.0, *)
  var toolbarItems: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  func setToolbarItems(toolbarItems: [UIBarButtonItem]?, animated: Bool)
}