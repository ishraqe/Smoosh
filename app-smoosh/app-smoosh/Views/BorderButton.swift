//
//  BorderButton.swift
//  app-smoosh
//
//  Created by ishraqe manjur on 16/2/19.
//  Copyright © 2019 ishraqe manjur. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
