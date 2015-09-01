//
//  ResultController.swift
//  Roshambo
//
//  Created by Adam Duren on 9/1/15.
//  Copyright (c) 2015 Adam Duren. All rights reserved.
//

import UIKit

class ResultController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    var result: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = result
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

