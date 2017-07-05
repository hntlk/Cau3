//
//  TodoList.swift
//  Cau3
//
//  Created by Cntt22 on 7/5/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import Foundation
class TodoList
{
    // Variables
    var prioritizes: String
    var _toDoList: [ToDo]
    
    init(prioritized: String, includeToDoList: [ToDo])
    {
        prioritizes = prioritized
        _toDoList = includeToDoList
    }
    
    class func toDoList() -> [TodoList]
    {
        return [self.prioritizes1(), self.prioritizes2()]
    }
    
    // Private methods
    
    private class func prioritizes1() ->  TodoList{
        //
        var toDo = [ToDo]()
        
        toDo.append(ToDo(titled: "Task 1"))
        toDo.append(ToDo(titled: "Task 2"))
        
        return TodoList(prioritized: "Prioritizes number 1", includeToDoList: toDo)
    }
    
    private class func prioritizes2() ->  TodoList{
        //
        var toDo = [ToDo]()

        toDo.append(ToDo(titled: "Task 3"))
        toDo.append(ToDo(titled: "Task 4"))
        toDo.append(ToDo(titled: "Task 5"))
        
        return TodoList(prioritized: "Prioritizes number 2", includeToDoList: toDo)
    }
    
    
}
