
import UIKit

let π: CGFloat = .pi

struct Padding {
    subscript(multiplier: Int) -> CGFloat {
        get {
            return CGFloat(multiplier) * 8.0
        }
    }
}

struct C {
    static let padding = Padding()
    struct Sizes {
        static let buttonHeight: CGFloat = 48.0
        static let headerHeight: CGFloat = 48.0
        static let largeHeaderHeight: CGFloat = 220.0
        static let logoAspectRatio: CGFloat = 125.0/417.0
    }
    static var defaultTintColor: UIColor = {
        return UIView().tintColor
    }()
    static let animationDuration: TimeInterval = 0.3
    static let secondsInDay: TimeInterval = 86400
    static let maxMoney: UInt64 = 21000000*100000000
    static let satoshis: UInt64 = 100000000
    static let walletQueue = "com.bitcoinstandard.walletqueue"
    static let btcCurrencyCode = "BTC"
    static let null = "(null)"
    static let maxMemoLength = 250
    static let feedbackEmail = "feedback@bitcoinstandard.com"
    static let reviewLink = "https://itunes.apple.com/app/bitcoinstandard/id885251393?action=write-review"
    static var standardPort: Int {
        return E.isTestnet ? 18333 : 8333
    }
}
