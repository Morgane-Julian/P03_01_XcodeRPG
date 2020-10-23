//
//  Champions.swift
//  P03_01_XcodeRPG
//
//  Created by Symbioz on 16/10/2020.
//

import UIKit

class Champion {
    var name = String()
    var picture = UIImageView()
    var life = Int()
    var damage = Int()
    var weapon = Weapons()
    
    enum category {
        case wizzard, knight, hunter, barbarian
    }
    var type: category
    
    init(type: category, name: String) {
        self.name = name
        self.type = type
        switch self.type {
        case .knight:
            self.life = 150
            self.name = ""
            self.picture = UIImageView(image: UIImage(named: "knight"))

            
        case .wizzard:
            self.life = 125
            self.name = ""
            self.picture = UIImageView(image: UIImage(named: "wizzard"))

            
        case .hunter:
            self.life = 100
            self.name = ""
            self.picture = UIImageView(image: UIImage(named: "hunter"))

        
        case .barbarian:
            self.life = 100
            self.name = ""
            self.picture = UIImageView(image: UIImage(named: "barbarian"))

            
        }
    }
}

