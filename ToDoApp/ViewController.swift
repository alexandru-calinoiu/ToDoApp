//
//  ViewController.swift
//  ToDoApp
//
//  Created by Laura Calinoiu on 08/04/15.
//  Copyright (c) 2015 3Smurfs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var toDoItems = [ToDoItem]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .None
        tableView.rowHeight = 50.0
        
        if toDoItems.count<0{
            return
        }
        
        toDoItems = [ToDoItem(text:"prepare soup"), ToDoItem(text:"prepare breakfast"), ToDoItem(text: "go shopping"), ToDoItem(text: "finish tutorial"), ToDoItem(text: "get child from kindergarden"),
            ToDoItem(text: "put children to sleep")]
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath
        indexPath: NSIndexPath) -> CGFloat {
            return tableView.rowHeight;
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("cell",
                forIndexPath: indexPath) as UITableViewCell
            let item = toDoItems[indexPath.row]
            cell.textLabel?.text = item.text
            return cell
    }
    
    func colorForIndex(index: Int) -> UIColor {
        let itemCount = toDoItems.count - 1
        let val = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: 1.0, green: val, blue: 0.0, alpha: 1.0)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
        forRowAtIndexPath indexPath: NSIndexPath) {
            cell.backgroundColor = colorForIndex(indexPath.row)
    }

}

