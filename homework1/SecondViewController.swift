//
//  SecondViewController.swift
//  homework1
//
//  Created by Gogua on 17.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var petNameTextField: UITextField!     //Pet's TextField Description
    @IBOutlet weak var petTypeTextField: UITextField!
    @IBOutlet weak var petOwnerTextField: UITextField!
    @IBOutlet weak var cityNameTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton! // Button Description
    
    var onSavePressed: ((_ info: [String?]) -> ())? //Clouser
        
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 15 // View radius


    }
    //When press button, pass data previous page
    @IBAction func saveButtonPressed(_ sender: Any) {
        onSavePressed?([petNameTextField.text, petTypeTextField.text, petOwnerTextField.text, cityNameTextField.text, cityNameTextField.text])
        self.navigationController?.popToRootViewController(animated: true) // back to previous page
        
    }
    
}
