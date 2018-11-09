//
//  Game.swift
//  Apple Pie
//
//  Created by Wytze Dijkstra on 09/11/2018.
//  Copyright © 2018 Wytze Dijkstra. All rights reserved.
//

import Foundation
struct Game {
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetters : [Character]
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}





