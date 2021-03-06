//
//  Library
//
//  Created by Otto Suess on 07.08.18.
//  Copyright © 2018 Zap. All rights reserved.
//

import UIKit

extension UIStackView {
    convenience init(elements: [StackViewElement]) {
        self.init()

        set(elements: elements)
    }

    func set(elements: [StackViewElement]) {
        clear()
        for element in elements {
            addArrangedSubview(element.view())
        }
    }

    @discardableResult
    func addArrangedElement(_ element: StackViewElement) -> UIView {
        let view = element.view()
        addArrangedSubview(view)
        return view
    }

    func clear() {
        for view in arrangedSubviews {
            view.removeFromSuperview()
        }
    }
}
