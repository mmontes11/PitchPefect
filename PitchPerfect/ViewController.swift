//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Martín Montes Pérez on 11/06/16.
//  Copyright © 2016 Martín Montes Pérez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecording: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear called")
        stopRecording.enabled = false
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("Recording Audio...")
        recordingLabel.text = "Recording..."
        recordingButton.enabled = false
        stopRecording.enabled = true
    }
    
    
    @IBAction func stopRecording(sender: AnyObject) {
        print("Stoping Recording..")
        recordingLabel.text = "Tap to Record"
        recordingButton.enabled = true
        stopRecording.enabled = false
    }
}

