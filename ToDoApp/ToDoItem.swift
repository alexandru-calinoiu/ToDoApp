//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Laura Calinoiu on 08/04/15.
//  Copyright (c) 2015 3Smurfs. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var text: String
    var completed: Bool
    
    init(text: String){
        self.text = text
        self.completed = false
    }
}
