//
//  ViewController.swift
//  TRACKENDO
//
//  Created by Niklas Lindell on 2018-03-13.
//  Copyright © 2018 Niklas Lindell. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var ref: DatabaseReference!
    var items: [Item] = []
    let cellReusableId = "cellReusableIdentifier"
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        let paron = Item(name: "päron")
        
        ref.child("items").child(paron.name).setValue(paron.toAnyObject())
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
//        ref.child("users").child("001").setValue(["username":"niklas"])
//        ref.child("users").child("002").setValue(["username":"matilda"])
//        ref.child("users").child("003").setValue(["username":"sarah"])
//

//        let mjol = Item(name: "mjöl")
//        let morot = Item(name: "morötter")
//        let ost = Item(name: "ost")
        
//        ref.child("items").child(mjol.name).setValue(mjol.toAnyObject())
//        ref.child("items").child(morot.name).setValue(morot.toAnyObject())
//       ref.child("items").child(ost.name).setValue(ost.toAnyObject())
//
        ref.child("items").observe(.value, with: {(snapshot) in
            
            var newItems:[Item] = []
            
            
            for item in snapshot.children {
                let listItem = Item(snapshot: item as! DataSnapshot)
                newItems.append(listItem)
                print(listItem.name)
            }
            
            self.items = newItems
            self.tableView.reloadData()
            
        })
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReusableId, for: indexPath)
        
        if let label = cell.textLabel {
            label.text = items[indexPath.row].name
        }
        
        return cell
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

