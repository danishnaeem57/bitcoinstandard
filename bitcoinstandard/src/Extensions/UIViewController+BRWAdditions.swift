

import UIKit

extension UIViewController {
    func addChildViewController(_ viewController: UIViewController, layout: () -> Void) {
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        layout()
        viewController.didMove(toParentViewController: self)
    }

    func remove() {
        willMove(toParentViewController: nil)
        view.removeFromSuperview()
        removeFromParentViewController()
    }

    func addCloseNavigationItem(tintColor: UIColor? = nil) {
        let close = UIButton.close
        close.tap = { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
        if let color = tintColor {
            close.tintColor = color
        }
        navigationItem.leftBarButtonItems = [UIBarButtonItem.negativePadding, UIBarButtonItem(customView: close)]
    }
}
