//
//  File.swift
//  MangaViewer
//
//  Created by King on 10/11/16.
//  Copyright © 2016 king. All rights reserved.
//

import Foundation

class BaseItem: NSObject {
    
    var id:String?
    var title:String?
    var desc: String?
    var imagePath:String?
    var url:String?
    
    init(id:String,title:String, desc:String, imagePath:String, url:String) {
        self.id = id
        self.title = title
        self.desc = desc
        self.imagePath = imagePath
        self.url = url
        
    }
    
}