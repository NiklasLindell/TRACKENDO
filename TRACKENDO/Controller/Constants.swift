//
//  Constants.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-24.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import Foundation



func saveData(workoutList : [String]) {
    UserDefaults.standard.set(workoutList, forKey: "workoutList")
    
}

func getData() -> [String]? {
    if let workout = UserDefaults.standard.array(forKey: "workoutList") as? [String] {
        return workout
    }
    else {
        return nil
    }
}
