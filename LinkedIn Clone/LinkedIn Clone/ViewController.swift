//
//  ViewController.swift
//  LinkedIn Clone
//
//  Created by mac on 22/08/2020.
//  Copyright © 2020 chavicodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    message
    @IBAction func showMessage(sender: UIButton) {
//        initializing dictionary for buttons
        let popupButton = [
            "a" : "Camera was clicked",
            "b" : "Image was clicked",
            "c" : "Picture was clicked",
            "d" : "More was clicked",
            "e" : "Keyboard was clicked"
        ]
        
        let selectedButton = sender
        
//   get string from dictionary
        if let buttonMessage = selectedButton.titleLabel?.text {
            let displayMessage = popupButton[buttonMessage]
            
//    setting alert controller
            let alertController = UIAlertController(title: "Popup", message: displayMessage, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }


}

