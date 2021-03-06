//
//  AddEditEmojiTableViewController.swift
//  Table View 2
//
//  Created by student on 12.10.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    
    var emoji = Emoji(symbol: "", name: "", description: "", usage: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
        func updateUI(){
        symbolTextField.text = emoji.symbol
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
        usageTextField.text = emoji.usage
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveSegue" else {return}
        
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let destription = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        
        emoji = Emoji(symbol: symbol, name: name, description: destription, usage: usage)
    }
    

}
