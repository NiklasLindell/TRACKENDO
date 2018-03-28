import UIKit

class AddWorkoutViewController: UIViewController {
    
    let segueID = "goToTableView"
    var workoutList : [Workout]?
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var exerciseTextField: UITextField!
    
    @IBOutlet weak var setTextField: UITextField!
    
    @IBOutlet weak var repsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    


    @IBAction func savePressed(_ sender: UIButton) {
        
        let workOut = Workout(title: titleTextField.text!, exercise: exerciseTextField.text! , reps: Int(repsTextField.text!)!, set: Int(setTextField.text!)!)
        
        createAlertAdd(title: "Saved", message: "Your workout have been saved")
      
        workoutList?.append(workOut)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == segueID) {
            let destination = segue.destination as! ListViewController
            destination.workoutList = self.workoutList
        }
    }
    
    func createAlertAdd(title: String, message:String ){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
