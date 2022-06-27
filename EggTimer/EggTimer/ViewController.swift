//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var totalTime = 0
    var currentSeconds = 0
    var timer = Timer()
    var player: AVAudioPlayer!
    let eggTimes = ["Soft":5, "Medium":10, "Hard":15]
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
   
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        currentSeconds = 0
        progressBar.progress = 0.0
        
        let buttonTitle = sender.currentTitle!
        textLabel.text = buttonTitle
        
        print(buttonTitle)
        //possible value might be nil
        print(eggTimes[buttonTitle]!)
        totalTime = eggTimes[buttonTitle]!
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if(currentSeconds < totalTime) {
            print(currentSeconds)
            currentSeconds = currentSeconds + 1
            progressBar.progress = Float(currentSeconds)/Float(totalTime)
        } else {
            timer.invalidate()
            textLabel.text  = "DONE!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
}
