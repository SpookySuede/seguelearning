//
//  ViewController.swift
//  segues
//
//  Created by Marc Scalia on 5/6/19.
//  Copyright © 2019 Marc Scalia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func firstButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen"{
            
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textInput.text
        }
    }
    
}

