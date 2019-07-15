//
//  ViewController.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/07.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    let myItems: NSArray = ["b","c","d"]
    let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
    var tableDelegate: TableViewDelegate = TableViewDelegate()
    var displayWidth: CGFloat?
    var displayHeight: CGFloat?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableDelegate.viewController = self
        self.view.backgroundColor = UIColor.white
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        let tableview: TableView = TableView(width: self.view.frame.width, height: self.view.frame.height,barHeight: self.barHeight)
        let tableView = tableview.returnTableView()
        tableView.dataSource = self.tableDelegate
        tableView.delegate = self.tableDelegate
        self.view.addSubview(tableView)
        APIController().returnAPI(tableview: tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
