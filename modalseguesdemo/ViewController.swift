//
//  ViewController.swift
//  modalseguesdemo
//
//  Created by Placoderm on 7/7/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var adj = ""
    var verb1 = ""
    var verb2 = ""
    var noun = ""
    var words_filled = false

    @IBOutlet weak var madLibsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //let destination = segue.destination as! OtherViewController
        ////error: destination.outputLabel .text = textField.text
        //print (destination)
    }
    //unwind segue
    @IBAction func unwindToView(sender: UIStoryboardSegue)
    {
        let sourceViewController = sender.source as! OtherViewController

        if let adjective = sourceViewController.adjectiveTextField.text {
            adj = adjective
            print(adj)
            words_filled = true
        }
        if let verb_one = sourceViewController.verbOneTextField.text {
            verb1 = verb_one
            print(verb1)
            words_filled = true
        }
        if let verb_two = sourceViewController.verbTwoTextField.text {
            verb2 = verb_two
            print(verb2)
            words_filled = true
        }
        if let the_noun = sourceViewController.nounTextField.text {
            noun = the_noun
            print(noun)
            words_filled = true
        }
        if words_filled {
            madLibsLabel.text = "We are having a perfectly \(adj) time now. Later we will \(verb1) and \(verb2) in the \(noun)"
        }
        else {
            madLibsLabel.text = "..."
        }
    }
}

