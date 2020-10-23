//
//  CollectionViewCell.swift
//  P03_01_XcodeRPG
//
//  Created by Symbioz on 23/10/2020.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var championPhoto: UIImageView!
    @IBOutlet weak var selectChampion: UIButton!
    @IBOutlet weak var championStats: UILabel!
    @IBOutlet weak var championTitle: UILabel!
    
    
    @IBAction func selectedChamp(_ sender: UIButton) {
    }
    
}
