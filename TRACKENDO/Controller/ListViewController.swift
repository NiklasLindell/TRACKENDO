//
//  ViewController.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-13.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import UIKit
import Firebase

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    
    var ref: DatabaseReference!
    var training: [Workout] = []
    
    let cellReusableId = "cellReusableIdentifier"
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        ref = Database.database().reference()
        
        ref.child("training").observe(.value, with: {(snapshot) in
            
            var newTraining:[Workout] = []
            
            
            
            self.training = newTraining
            self.tableView.reloadData()
            
        })
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return training.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReusableId", for: indexPath)
        
        if let label = cell.textLabel {
            label.text = training[indexPath.row].title
        }
        
        return cell
    }

    
    
    
 
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

