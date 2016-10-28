//
//  ViewController.swift
//  MangaViewer
//
//  Created by King on 9/27/16.
//  Copyright © 2016 king. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class HomeViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        settings.style.buttonBarBackgroundColor = UIColor.primaryColor()
        settings.style.buttonBarItemBackgroundColor = UIColor.clearColor()
        settings.style.selectedBarBackgroundColor = UIColor.accentColor()
        settings.style.buttonBarItemFont = UIFont.boldSystemFontOfSize(14)
        settings.style.selectedBarHeight = 2.5
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = UIColor.whiteColor()
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "Home"
        navigationController?.navigationBar.translucent = false
        
        let titleLabel = UILabel(frame: CGRectMake(0, 0, view.frame.width - 32, view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = UIFont.systemFontOfSize(20)
        navigationItem.titleView = titleLabel
        
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = UIColor.grayColor()
            newCell?.label.textColor = UIColor.whiteColor()
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController]{
        var vcList = [UIViewController]()
        vcList.append(LatestMangaViewController())
        for i in 0...2 {
            vcList.append(ChildExampleViewController(itemInfo: IndicatorInfo(title:"View\(i)")))
            
        }
        return vcList
    }

}

