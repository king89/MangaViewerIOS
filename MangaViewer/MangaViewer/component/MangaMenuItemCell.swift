//
//  MangaMenuItemCell.swift
//  MangaViewer
//
//  Created by King on 10/27/16.
//  Copyright © 2016 king. All rights reserved.
//

import UIKit

class MangaMenuItemCell: BaseCell {
    
    lazy var label:UILabel = {
        let label = UILabel(frame: CGRectMake(0, 0, self.frame.width, self.frame.height))
        label.backgroundColor = UIColor.blueColor()
        label.textColor = UIColor.blackColor()
        label.text = "manga item"
        return label
    }()
    
    override func setupViews() {
        self.backgroundColor = UIColor.orangeColor()
        self.addSubview(label)

    }
    
}
