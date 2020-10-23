//
//  GameManager.swift
//  P03_01_XcodeRPG
//
//  Created by Symbioz on 16/10/2020.
//

import Foundation

class GameManager : Game {
    func refresh() {
        score = 0
        currentIndex = 0
        state = .over
    }
}
