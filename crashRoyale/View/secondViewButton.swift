//
//  secondViewButton.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/15.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation
import UIKit
class secondViewButton: UIView {
    func setButton(vc: secondViewController){
        let button: UIButton = UIButton(frame:CGRect(x: 0, y: 50, width: 200, height: 50))
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitle("戻る", for: .normal)
        vc.view.addSubview(button)
        button.addTarget(vc.self, action: #selector(secondViewController.toFirst), for: .touchUpInside)
    }
}
