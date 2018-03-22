//
//  Item.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-22.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import Foundation
import Firebase

class Item {
    
    var name: String
    var completed: Bool
    
    init(name: String, completed: Bool = false) {
        self.name = name
        self.completed = completed
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        completed = snapshotValue["completed"] as! Bool
    }
    
    func toAnyObject() -> Any {
        return ["name": name, "completed": completed]
    }
    
    func switchComplete() {
        completed = !completed
    }
    
    
}
