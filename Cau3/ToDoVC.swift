//
//  ToDoVC.swift
//  Cau3
//
//  Created by Cntt22 on 7/5/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class ToDoVC: UITableViewController {

    //
    //
    lazy var toDoList: [TodoList] = {
        return TodoList.toDoList()
    }()
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return toDoList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let toDoList = self.toDoList[section]
        return toDoList._toDoList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return toDoList[section].prioritizes
    }
    
    //
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! ToDoCell
        let toDoList = self.toDoList[indexPath.section]
        let toDo = toDoList._toDoList[indexPath.row]
        
        cell.configCellWith(event: toDo)
        return cell
    }

}
