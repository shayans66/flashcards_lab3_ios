//
//  ViewController.swift
//  mpd_lab2
//
//  Created by Shayan Sarnevesht on 3/12/21.
//

import UIKit


struct Flashcard {
    var question: String
    var answer: String
}

class ViewController: UIViewController {

    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var frontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func didTapOnFlashCard(_ sender: Any) {
//        frontLabel.isHidden = true;
//        print("flashcard")
//    }
    
    @IBAction func tappedOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    
    func updateFlashcard(question: String, answer: String) {
        
        frontLabel.text = question
        backLabel.text = answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
        
    }
    
}

