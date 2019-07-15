//
//  tableView.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/08.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation
import UIKit

public class TableView: UIView {
    let barHeight: CGFloat
    // Viewの高さと幅を取得する.
    let displayWidth: CGFloat
    let displayHeight: CGFloat
    init(width:CGFloat,height:CGFloat,barHeight: CGFloat) {
        self.displayWidth = width
        self.displayHeight = height
        self.barHeight = barHeight
        super.init(frame: CGRect(x: 0, y: 0, width: width, height: height))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func returnTableView() -> UITableView {
        let myTableview: UITableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight - 50))
        myTableview.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        return myTableview
    }
}
