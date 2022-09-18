//
//  ViewController.swift
//  homework1
//
//  Created by Gogua on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var cityNamaLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
   
    override func viewDidLoad() {
        addButton.layer.cornerRadius = 15
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVc = storyboard.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        secondVc.onSavePressed = { data in
            self.nameLabel.text = data[0]
            self.typeLabel.text = data[1]
            self.ownerLabel.text = data[2]
            self.cityNamaLabel.text = data[3]
        }
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
}

