//
//  ViewController.swift
//  tblecollectiondemo
//
//  Created by Stegowl05 on 14/12/18.
//  Copyright © 2018 Stegowl. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    var arrData = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    var arrValue = ["A","B","C","D","E","F","G","H","I","J","K","L"]
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension//150
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableVCell") as! TableVCell
        if indexPath.row%2 == 0{
           count = 10
            cell.collview.reloadData()
            
        }else{
            count = 0
            cell.collview.reloadData()
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionVCell", for: indexPath)as! CollectionVCell
        if indexPath.row%3 == 0
        {
             cell.lbl.text = "\(indexPath.row)"
            
        }else{
            cell.lbl.text = "Demo"
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return count
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        return CGSize(width: collview.frame.width/4, height: collview.frame.width/2)
//    }
}

