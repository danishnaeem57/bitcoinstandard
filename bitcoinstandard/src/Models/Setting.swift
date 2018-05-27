

import Foundation

struct Setting {
    let title: String
    let accessoryText: (() -> String)?
    let callback: () -> Void
}

extension Setting {
    init(title: String, callback: @escaping () -> Void) {
        self.title = title
        self.accessoryText = nil
        self.callback = callback
    }
}
