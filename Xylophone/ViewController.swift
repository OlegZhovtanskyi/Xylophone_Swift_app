//
//  ViewController.swift
//  Xylophone
//
//  Created by Oleg Zhovtanskyi on 02/04/2023.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    let songsNames = ["Sounds/C", "Sounds/D", "Sounds/E", "Sounds/F", "Sounds/G", "Sounds/A", "Sounds/B"]
    
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonF: UIButton!
    @IBOutlet weak var buttonG: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    
    
    //MARK: - Button pressed action func
    @IBAction func keyPressed(_ sender: UIButton) {
        switch sender {
        case buttonC:
            playSound(songName: songsNames[0])
        case buttonD:
            playSound(songName: songsNames[1])
        case buttonE:
            playSound(songName: songsNames[2])
        case buttonF:
            playSound(songName: songsNames[3])
        case buttonG:
            playSound(songName: songsNames[4])
        case buttonA:
            playSound(songName: songsNames[5])
        case buttonB:
            playSound(songName: songsNames[6])
        default:
            print("Error")
        }
    }
    
    
    
    //MARK: - Play sound func
    func playSound(songName: String) {
        guard let path = Bundle.main.path(forResource: songName, ofType:"wav") else {
           return}
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
