//
//  User.swift
//  crashRoyale
//
//  Created by 石田大智 on 2019/07/08.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation
public struct User: Codable {
    var name: String
    var tag: String
    var expLevel: Int
    var trophies: Int
    var rank: Int
    var previousRank: Int
    struct clan: Codable {
        var tag: String
        var name: String
        struct badge: Codable {
            var name: String
            var icon_swf: String
            var icon_export_name: String
            var vategory: String
            var id: Int
            var image: String
        }

    }
    struct arena: Codable {
        var name: String
    }
}
