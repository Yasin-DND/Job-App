//
//  DNDButton.swift
//  SA1
//
//  Created by Mac on 21/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import Foundation
import UIKit

class DNDButton : UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    func setupButton(){
        setTitleColor(UIColor.darkGray, for: .normal)
        backgroundColor = UIColor.white.withAlphaComponent(0.6)
        titleLabel?.font =  UIFont(name: "Avenir Next Condensed Regular", size: 30)
        layer.cornerRadius = frame.size.height/2
    }
}
