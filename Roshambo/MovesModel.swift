//
//  MovesModel.swift
//  Roshambo
//
//  Created by Adam Duren on 9/1/15.
//  Copyright (c) 2015 Adam Duren. All rights reserved.
//

import Foundation



class MovesModel {
    enum Moves: Int {
        case Rock = 0
        case Paper = 1
        case Scissors = 2
    }
    
    static func getMoveFromIdentifier(move: String) -> Moves? {
        
        switch move {
        case "Rock":
            return Moves.Rock
        case "Paper":
            return Moves.Paper
        case "Scissors":
            return Moves.Scissors
        default:
            return nil
        }
    }
    
    static func getFriendlyMoveString(move: Moves) -> String {
        switch move {
        case .Rock:
            return "Rock"
        case .Paper:
            return "Paper"
        case .Scissors:
            return "Scissors"
        }
    }
    
    static func getRandomMove() -> Moves {
        return Moves(rawValue: Int(arc4random() % 3))!
    }
    
    static func getWinner(moveOne: Moves, moveTwo: Moves) -> String {
        let moveOneString = getFriendlyMoveString(moveOne)
        let moveTwoString = getFriendlyMoveString(moveTwo)
        
        if moveOne == moveTwo {
            return "\(moveOneString) is the same as \(moveTwoString). Tie."
        } else if (moveOne == .Rock && moveTwo == .Paper) {
            return "\(moveTwoString) covers \(moveOneString). You lose."
        } else if (moveOne == .Rock && moveTwo == .Scissors) {
            return "\(moveOneString) smashes \(moveTwoString). You Win."
        } else if (moveOne == .Paper && moveTwo == .Rock) {
            return "\(moveOneString) covers \(moveTwoString). You Win."
        } else if (moveOne == .Paper && moveTwo == .Scissors) {
            return "\(moveTwoString) cuts \(moveOneString). You lose."
        } else if (moveOne == .Scissors && moveTwo == .Paper) {
            return "\(moveOneString) cuts \(moveTwoString). You Win."
        } else {  // Scissors / Rock
            return "\(moveTwoString) smashes \(moveOneString). You Lose."
        }
    }

}