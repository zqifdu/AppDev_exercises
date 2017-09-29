//
//  ViewController.swift
//  XcodeTour
//
//  Created by Zhenyi Qi on 9/17/17.
//  Copyright © 2017 Zhenyi Qi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0

    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender: UIButton){
        print("deal tapped")
        // Randomize left number from 2 to 10
        let leftNumber = Int(arc4random_uniform(13))
        
        // Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])

        // Randomize right number from 2 to 10
        let rightNumber = Int(arc4random_uniform(13))
        
        // Set the right number
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Compare the card numbers
        if leftNumber > rightNumber{
            // Left number wins
            leftScore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber{
            // it's a tie
            
        }
        else{
            //right number wins
            rightScore += 1
            
            // Update the label
            rightScoreLabel.text = String(rightScore)
        }
    }

}

