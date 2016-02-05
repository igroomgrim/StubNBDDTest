//
//  Post.swift
//  StubNBDDTest
//
//  Created by Anak Mirasing on 2/5/16.
//  Copyright © 2016 iGROOMGRiM. All rights reserved.
//

import Foundation
import SwiftyJSON

class Post {
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    init(json: AnyObject) {
        let data = JSON(json)
        self.userId = data["userId"].int
        self.id = data["id"].int
        self.title = data["title"].string
        self.body = data["body"].string
    }
    
}
