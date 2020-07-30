//
//  distanceTxtField.swift
//  ImperialConverter
//
//  Created by Onur Erbey on 26.07.2020.
//  Copyright © 2020 Onur Erbey. All rights reserved.
//

import UIKit

@IBDesignable

class distanceTxtField: UITextField {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.3348690271, green: 0.3349306583, blue: 0.3348608613, alpha: 0.3)
        layer.cornerRadius = 20.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
