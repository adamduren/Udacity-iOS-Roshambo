//
//  PlayController.swift
//  Roshambo
//
//  Created by Adam Duren on 9/1/15.
//  Copyright (c) 2015 Adam Duren. All rights reserved.
//

import UIKit

class PlayController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultController;
        let button = sender as! UIButton;

        if let moveId = button.currentTitle {
            let playerOneMove = MovesModel.getMoveFromIdentifier(moveId)
            playGame(playerOneMove!, controller: controller)
        } else {
            println("Errors")
        }
    }

    @IBAction func movePaper(sender: UIButton) {
        performSegueWithIdentifier("viewResult", sender: sender)
    }

    @IBAction func moveRock(sender: UIButton) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultController") as! ResultController
        
        playGame(MovesModel.Moves.Rock, controller: controller)
        self.presentViewController(controller, animated: false, completion: nil)
    }
    
    func playGame(playerOneMove: MovesModel.Moves, controller: ResultController) {

        controller.result = MovesModel.getWinner(playerOneMove, moveTwo: MovesModel.getRandomMove())
    }
}

