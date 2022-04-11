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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        storyLabel.text = "You see a fork in the road."
        choice1Button.setTitle("Take a left", for: UIControl.State.normal)
        choice2Button.setTitle("Take a right", for: UIControl.State.normal)
        
//        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {

        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
     
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}
































