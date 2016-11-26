//
//  LatestMangaViewController.swift
//  MangaViewer
//
//  Created by King on 10/27/16.
//  Copyright © 2016 king. All rights reserved.
//

import Foundation
import UIKit
import XLPagerTabStrip

class LatestMangaViewController: UIViewController, IndicatorInfoProvider, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UIGestureRecognizerDelegate {
    let cellId = "cellId"
    
    override func viewDidLoad() {
        setupCollectionView()
    }
    
    func setupCollectionView(){
        self.mangaCollectionView.registerClass(MangaMenuItemCell.self, forCellWithReuseIdentifier: cellId)
        self.view.addSubview(mangaCollectionView)
        self.view.addSubview(mangaSourceView)
        
        self.view.addConstraintsWithFormat("H:|[v0]|", views: mangaSourceView)
        self.view.addConstraintsWithFormat("H:|[v0]|", views: mangaCollectionView)
        self.view.addConstraintsWithFormat("V:|[v0][v1]|", views: mangaSourceView, mangaCollectionView)
        mangaSourceView.heightAnchor.constraintEqualToConstant(20).active = true
        mangaSourceView.widthAnchor.constraintEqualToConstant(self.view.frame.width).active = true
        
        let tap = UIScreenEdgePanGestureRecognizer(target: self, action: Selector("handleTap:"))
        tap.edges = .Left
        //tap.cancelsTouchesInView = false
        tap.delegate = self
        self.view.addGestureRecognizer(tap)
        
    }
    func handleTap(sender: UIScreenEdgePanGestureRecognizer? = nil) {
        // handling code
        print("handle tag")
    }
    func indicatorInfoForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Latest Releases")
    }
    
    var mangaSourceView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.redColor()
        return v
    }()
    
    lazy var mangaCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.whiteColor()
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId,forIndexPath: indexPath) as! MangaMenuItemCell
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 120, height: 170)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5
    }
    
}