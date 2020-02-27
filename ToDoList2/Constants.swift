//
//  Constants.swift
//  ToDoList2
//
//  Created by Ethan Fox (student HH) on 2/24/20.
//  Copyright © 2020 Ethan Fox (student HH). All rights reserved.
//

import Foundation

struct listValues{
    var title : String?
    var date : String?
    var completed : Bool
}

var todoList:[listValues]?

func saveData(todoList:[listValues]) {
    UserDefaults.standard.set(todoList, forKey: "todoList")
}

func fetchData() -> [listValues]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [listValues] {
        return todo
    }
    else{
    return nil
    }
}
