//
//  ViewController.swift
//  EggTimer
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textDisplay: UILabel!
    
    
    let eggTime = ["Soft":10, "Medium":20, "Hard":30]
    var secondsRemaining = 0
    var timer = Timer()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.secondsRemaining = eggTime[sender.currentTitle!]!
        timer.invalidate()
        textDisplay.text = "How do you like your eggs?"
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
                (Timer) in
                if (self.secondsRemaining > 0) {
                    print ("\(self.secondsRemaining) seconds")
                    self.secondsRemaining -= 1
                }
                else {
                    Timer.invalidate()
                    self.textDisplay.text = "Time Up!"
                }
        }

    }
    
   

}
