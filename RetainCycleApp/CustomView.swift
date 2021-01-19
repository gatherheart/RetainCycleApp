//
//  CustomView.swift
//  RetainCycleApp
//
//  Created by JK on 2020/05/12.
//  Copyright © 2020 codesquad. All rights reserved.
//

import UIKit

protocol  CustomDelegate: class {
    func foo(_ value: Int)
}

class CustomView: UIView {
    @IBOutlet weak var titleLabel : UILabel!
    var openValue = 0 {
        didSet {
            delegate?.foo(openValue)
            titleLabel.text = String(openValue)
        }
    }
    
    weak var delegate : CustomDelegate?

    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.systemOrange
    }
}
