//
//  TableVCell.swift
//  tblecollectiondemo
//
//  Created by Stegowl05 on 14/12/18.
//  Copyright © 2018 Stegowl. All rights reserved.
//

import UIKit


class TableVCell: UITableViewCell{

    @IBOutlet weak var collview: UICollectionView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  
}
