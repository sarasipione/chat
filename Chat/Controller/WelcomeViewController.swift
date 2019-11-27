//
//  ViewController.swift
//  Chat
//
//  Created by Sara Sipione on 27/11/2019.
//  Copyright © 2019 Sara Sipione. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "image")
        self.navigationController!.navigationBar.setBackgroundImage(image, for: .default)
        
        //Title Animation with CLTypingLabel POD
        //titleLabel.text = K.appName
        
        //Title Animation with FOR LOOP
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}

