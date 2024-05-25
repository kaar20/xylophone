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
    var player=AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func keyPressed(_ sender: UIButton) {
//        playSound()
//        print(sender.currentTitle!)
        if let optionalVariable1 = sender.currentTitle {
          
            playSound(soundName: optionalVariable1)
        }
    }
    func playSound(soundName:String){
//        var me=lab
        let url=Bundle.main.url(forResource: "\(soundName)", withExtension: "wav")
        player=try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

