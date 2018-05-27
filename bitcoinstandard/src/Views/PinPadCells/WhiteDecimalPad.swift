

import UIKit

class WhiteDecimalPad : GenericPinPadCell {

    override func setAppearance() {
        if isHighlighted {
            centerLabel.backgroundColor = .secondaryShadow
            centerLabel.textColor = .darkText
        } else {
            centerLabel.backgroundColor = .white
            centerLabel.textColor = .grayTextTint
        }
    }

    override func addConstraints() {
        centerLabel.constrain(toSuperviewEdges: nil)
        imageView.constrain(toSuperviewEdges: nil)
    }
}
