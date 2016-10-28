//
//  MangaMenuItem.swift
//  MangaViewer
//
//  Created by King on 10/11/16.
//  Copyright © 2016 king. All rights reserved.
//

import Foundation


class MangaMenuItem : BaseItem {
    
    /**
     * @param id
     * @param title
     * @param description
     * @param imagePath
     */
    override init(id: String, title: String, desc: String, imagePath: String, url: String) {
        super.init(id: id, title: title, desc: desc, imagePath: imagePath, url: url)
    }
    
    
    func getHash() -> String {
        return ""
    }
    
}
