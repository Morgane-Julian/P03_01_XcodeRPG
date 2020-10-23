//
//  ChampionSelectController.swift
//  P03_01_XcodeRPG
//
//  Created by Symbioz on 21/10/2020.
//

import Foundation
import UIKit

class ChampionSelectController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBAction func cancelGame(segue: UIStoryboardSegue) { }
    @IBAction func GoButton() {
    }
    
    
    @IBOutlet weak var CollectionChampionSelect: UICollectionView!
    
    @IBOutlet weak var SelectedChampion: UIView!
    
    
    var collectionChamp : [String] = ["1", "2", "3", "4"]
    let nameChamp = [("Barbarian"),("Knight"),("Wizzard"),("Hunter")]
    let statsChamp = [("blablabla"),("blablabla"),("blablabla"),("blablabla")]
    let photoChamp = [UIImage(named: "barbarian.png"),
                        UIImage(named: "knight.png"),
                        UIImage(named: "wizzard.png"),
                        UIImage(named: "hunter.png")]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionChampionSelect.delegate = self
        CollectionChampionSelect.dataSource = self
        
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameChamp.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell {
        
        let cellIndex = indexPath.item
        
        cell.selectChampion.isHidden = true
        cell.championPhoto.image = photoChamp[cellIndex]
        cell.championStats.text = statsChamp[cellIndex]
        cell.championTitle.text = nameChamp[cellIndex]
        
        
        return cell
        
        }
        return UICollectionViewCell()
    }
}

