//
//  ViewController.swift
//  magic8ball
//
//  Created by Ajayvir Dhaliwal on 9/6/19.
//  Copyright © 2019 Ajay Dhaliwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNum1:Int=0
    @IBOutlet weak var ball: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBall()
        // Do any additional setup after loading the view.
    }
    @IBAction func askMe(_ sender: Any)
    {
        changeBall()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        changeBall()
    }
    func changeBall()
    {
        randomNum1=Int.random(in: 0...4)
        ball.image=UIImage(named: ballArray[randomNum1])
        
    }

}

