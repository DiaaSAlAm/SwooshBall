//
//  BorderButton.swift
//  Swoosh Ball
//
//  Created by MacBook Pro on 11/30/18.
//  Copyright © 2018 Diaa SAlAm. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
