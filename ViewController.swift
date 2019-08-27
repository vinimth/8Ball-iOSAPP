//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Vinicius Moreno on 24/08/19.
//  Copyright © 2019 Vinicius Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball2", "ball3", "ball4", "ball5"]
    var randomBallIndex: Int = 0
    
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }
    
    
        @IBAction func askButtonPressed(_ sender: UIButton) {
            updateBallImage()
        }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage() {
        
        randomBallIndex = Int.random(in: 0 ... 4)
        
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
    }
    

}

