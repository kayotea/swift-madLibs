//
//  OtherViewController.swift
//  modalseguesdemo
//
//  Created by Placoderm on 7/7/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    var output: String?
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verbOneTextField: UITextField!
    @IBOutlet weak var verbTwoTextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    @IBAction func dismissButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        adjectiveTextField.placeholder = "Adjective"
        verbOneTextField.placeholder = "Verb"
        verbTwoTextField.placeholder = "Verb"
        nounTextField.placeholder = "Noun"
    }
    
    //func textViewDidBeginEditing(_ textView: UITextField) {
    //    textView.delegate = sel//f

    //    if textView.textColor == UIColor.lightGray {
    //        textView.text = nil
    //        textView.textColor = UIColor.black
    //    }
    //}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
