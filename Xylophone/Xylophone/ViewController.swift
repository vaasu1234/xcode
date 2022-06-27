//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    var player: AVAudioPlayer?


    @IBAction func keyPressed(_ sender: UIButton) {
        //exclamation point indicates that the variable will not be null
        let buttonTitle2  = sender.titleLabel!.text!
        
        let buttonTitle  = sender.currentTitle!
    
        print(buttonTitle)
        //paramter name: value
        playsound(buttonTitle: buttonTitle2)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
          sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
    }
    
    // paramter name: type
    func playsound(buttonTitle: String) {
        
        guard let url = Bundle.main.url(forResource: buttonTitle, withExtension: "wav") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                player = try AVAudioPlayer(contentsOf: url)

                player?.play()

            } catch let error {
                print(error.localizedDescription)
            }
        
    }
    

}

