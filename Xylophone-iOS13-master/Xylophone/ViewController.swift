//  ViewController.swift
//  Xylophone

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redButtonPressed(_ sender: UIButton) {
        // Print "Start" immediately
        print("Start")
        
        // Play sound immediately after printing "Start"
        playSound(soundName: sender.currentTitle!)
        
        // Dim the button by changing its alpha value
        sender.alpha = 0.5
        
        // Make the button go back to its original opacity after a short delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Make the button go back to its original opacity
            sender.alpha = 1.0
        }
    }
   
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
