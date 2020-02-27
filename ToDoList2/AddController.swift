//
//  AddController.swift
//  ToDoList2
//
//  Created by Ethan Fox (student HH) on 2/24/20.
//  Copyright © 2020 Ethan Fox (student HH). All rights reserved.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    
    let formatter = DateFormatter()
    var dateText = "something broke"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.dateFormat = "MM/dd/yyyy"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPressed(_ sender: UIButton) {
        
        if (textField.text != nil) && textField.text != "" {
            dateText = formatter.string(from: dateField.date)
            print(dateText)
            todoList?.append(listValues(title: textField.text, date: dateText, completed: false))
            textField.text = ""
            textField.placeholder = "Add more?"
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
