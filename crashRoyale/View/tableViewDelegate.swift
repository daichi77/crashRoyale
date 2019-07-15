//
//  tableViewDelegate.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/08.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation
import UIKit
class TableViewDelegate: UITableView, UITableViewDelegate,UITableViewDataSource {
    var viewController: ViewController?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = secondViewController()
        let naviVC = UINavigationController(rootViewController: nextVC)
        nextVC.id = indexPath.row
        self.viewController!.present(naviVC, animated: true, completion: nil)
    }
    
    //cellの総数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //Cellに値を設定
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Cellを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        //Cellに値を設定
        if(APIController.users?[indexPath.row].name != nil ) {
            cell.textLabel!.text = APIController.users![indexPath.row].name
        } else {
            cell.textLabel!.text = "default"
        }
        
        return cell
    }
}
