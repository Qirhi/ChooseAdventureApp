//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var storyNumber = 0
    
    mutating func getNextStory(userChoice: Int) {
        
        // if userChoice matches choice1
        if userChoice == 1 {
            self.storyNumber += 1
            print("new storyNumber", storyNumber)
        }
        
        
        // if userChoice matches choice2
        if userChoice == 2 {
            self.storyNumber += 2
            print("new storyNumber", storyNumber)

        }
        
        
    }
    
}
