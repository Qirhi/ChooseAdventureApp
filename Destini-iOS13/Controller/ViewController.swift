//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    @IBAction func choice1Made(_ sender: UIButton) {
        storyBrain.getNextStory(userChoice: 1)
        updateUI()
    }
    @IBAction func choice2Made(_ sender: UIButton) {
        storyBrain.getNextStory(userChoice: 2)
        updateUI()
    }
    
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.storyLabel.text = storyBrain.stories[0].title
        self.choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        self.choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
    }

    func updateUI() {
        self.storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        self.choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        self.choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
    }

}

