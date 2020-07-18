//
//  ViewController.swift
//  Guessor
//
//  Created by apple27 on 2019/9/26.
//  Copyright © 2019年 bjutsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Robot: UILabel!
    @IBOutlet weak var Hint: UILabel!
    @IBOutlet weak var Play: UIButton!
    
    @IBOutlet weak var PlayAgain: UIButton!
    @IBOutlet weak var Scissora: UIButton!
    @IBOutlet weak var Mux: UIButton!
    @IBOutlet weak var Paoer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PlayAgain.isHidden = true
        Mux.frame = CGRect(x: 0, y: 0, width: 75, height: 176)
    }
    
    func Init(){
        Robot.text = "🤖️"
        Scissora.isHidden = false
        Mux.isHidden = false
        Paoer.isHidden = false
        PlayAgain.isHidden = true
        view.backgroundColor = .white
        Hint.text = "Scissors, rock and paper. "
        
        //Enable all the choice in the game starting view
        Mux.isEnabled = true
        Scissora.isEnabled = true
        Paoer.isEnabled = true
        
    }
    
    
    @IBAction func RockClicked(_ sender: Any) {
        var gameSign = randomSign()
        
        Scissora.isHidden = true
        Paoer.isHidden = true
        PlayAgain.isHidden = false
        Robot.text = gameSign
        
        //The Rock can't be clicked in the game running view
        Mux.isEnabled = false
        
        if gameSign == "🖐️" {
            Hint.text = "You lose!"
            view.backgroundColor = .red
        }
        else if gameSign == "✌️"{
            Hint.text = "You win!"
            view.backgroundColor = .green
        }
        else{
            Hint.text = "In equal!"
            view.backgroundColor = .yellow
        }
        print("Mux")
        
        
        print(Mux.frame)
    }
    
    @IBAction func ScissorsClicked(_ sender: Any) {
        var gameSign = randomSign()
        
        print(Scissora.isHidden)
        Mux.isHidden = true
        Paoer.isHidden = true
        PlayAgain.isHidden = false
        Robot.text = gameSign
        
        if gameSign == "👊" {
            Hint.text = "You lose!"
            view.backgroundColor = .red
        }
        else if gameSign == "🖐️"{
            Hint.text = "You win!"
            view.backgroundColor = .green
        }
        else{
            Hint.text = "In equal!"
            view.backgroundColor = .yellow
        }
        
        //The Scissora can't be clicked in the game running view
        Scissora.isEnabled = false
        //print("Scissora")
        //print(Scissora.frame)
    }
    
    @IBAction func PaperClicked(_ sender: Any) {
        var gameSign = randomSign()
        Mux.isHidden = true
        Scissora.isHidden = true
        PlayAgain.isHidden = false
        Robot.text = gameSign
        
        if gameSign == "✌️" {
            Hint.text = "You lose!"
            view.backgroundColor = .red
        }
        else if gameSign == "👊"{
            Hint.text = "You win!"
            view.backgroundColor = .green
        }
        else{
            Hint.text = "In equal!"
            view.backgroundColor = .yellow
        }
        
        //The Paper can't be clicked in the game running view
        Paoer.isEnabled = false
        print(Paoer.frame)
    }
    
    
    @IBAction func Play(_ sender: Any) {
//        Init()
//        print("Paoer")
//        print(Paoer.frame)
//        print("Scissora")
//        print(Scissora.frame)
//        print("Mux")
//        print(Mux.frame)
//        print(Mux.isHidden)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

