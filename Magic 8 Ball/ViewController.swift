//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Charles Horton III on 10/15/18.
//  Copyright © 2018 Charles Horton III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
    
    func changeBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage.init(named: ballArray[randomBallNumber])
    }
}

