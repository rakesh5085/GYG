import UIKit

extension UIViewController {
  /// Add child view controller and its view
  func add(childViewController: UIViewController) {
    addChildViewController(childViewController)
    view.addSubview(childViewController.view)
    childViewController.didMove(toParentViewController: self)
  }
}
