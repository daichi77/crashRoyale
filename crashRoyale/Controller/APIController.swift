//
//  APIController.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/09.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit
import Foundation

class APIController {
    let baseURL: String = "https://api.royaleapi.com/top/players/JP"
    static var users: [User]?
    let headers = [
        "Authorization": "apikey",//ここはapikeyを各自入れる
        "Cache-Control": "no-cache",
    ]
    func returnAPI(tableview: UITableView) {
        APIController.users?.removeAll()
        let request = NSMutableURLRequest(url: NSURL(string: baseURL )! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let decoder = JSONDecoder()
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
                do {
                    APIController.users = try decoder.decode([User].self, from: data!)
                    DispatchQueue.main.async {
                        tableview.reloadData()
                    }
                } catch {
                    print(error)
                }
            }
        )
        dataTask.resume()
    }
}
