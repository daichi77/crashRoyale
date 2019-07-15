//
//  secondViewLabel.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/15.
//  Copyright © 2019 com.example. All rights reserved.
//


import UIKit

class secondViewLabel: UIView {
    func returnLabel(text: String,frameWidth: CGFloat,frameHeight: CGFloat,vc: secondViewController){
        let width: CGFloat = 200
        let height: CGFloat = 50
        let posX: CGFloat = frameWidth/2 - width/2
        let posY: CGFloat = frameHeight/2 - height/2
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: width, height: height))
        // UILabelに文字を代入.
        label.text = "\(text)"
        // 文字の影をグレーに定義.
        label.shadowColor = UIColor.gray
        // Textを中央寄せにする.
        label.textAlignment = NSTextAlignment.center
        vc.view.addSubview(label)
        
    }
}
