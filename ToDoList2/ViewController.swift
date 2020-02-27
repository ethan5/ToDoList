//
//  ViewController.swift
//  ToDoList2
//
//  Created by Ethan Fox (student HH) on 2/24/20.
//  Copyright © 2020 Ethan Fox (student HH). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let todo = todoList {
            return todo.count
        }
        else{
            return 0
        }
        
       // return todoList?.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        
       let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo = todoList {

          
  
            cell.textLabel?.text = todo[indexPath.row]
            
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {//UITableViewCell.EditingStyle
        
        if editingStyle == .delete {
            todoList?.remove(at: indexPath.row)
           tableView.deleteRows(at: [indexPath], with: .fade) 
            
            tableView.reloadData()
            print("deleted")
        }
    }
    

}


 
