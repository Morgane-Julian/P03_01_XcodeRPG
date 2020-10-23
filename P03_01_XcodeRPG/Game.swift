//
//  Game.swift
//  P03_01_XcodeRPG
//
//  Created by Symbioz on 16/10/2020.
//

import Foundation

class Game {
    var score = 0
    
    public var currentIndex = 0
    
    var state: State = .onGoing
    
    enum State {
        case onGoing, over
    }
    
    var player1 = "Player 1"
    var player2 = "Player 2"
    
    
    
    
}
