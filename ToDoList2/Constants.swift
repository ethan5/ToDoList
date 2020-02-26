//
//  Constants.swift
//  ToDoList2
//
//  Created by Ethan Fox (student HH) on 2/24/20.
//  Copyright © 2020 Ethan Fox (student HH). All rights reserved.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]) {
    
    UserDefaults.standard.set(todoList, forKey: "todoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo
    }
    else{
    return nil
    }
}
