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
        hidden()
        
        
    }
    
    
    @IBAction func addWoPressed(_ sender: Any) {
        exTextField1.isHidden = false
        setTextField1.isHidden = false
        repsTextField1.isHidden = false
        
    }
    
    
    @IBAction func savePressed(_ sender: UIButton) {
        
        let workOut = Workout(title: titleTextField.text!, exercise: exerciseTextField.text! , reps: Int(repsTextField.text!)!, set: Int(setTextField.text!)!)
        
        createAlertAdd(title: "Saved", message: "Your workout has been saved")
        
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
    
    func hidden(){
        exTextField1.isHidden = true
        exTextField2.isHidden = true
        exTextField3.isHidden = true
        exTextField4.isHidden = true
        exTextField5.isHidden = true
        exTextField6.isHidden = true
        exTextField7.isHidden = true
        exTextField8.isHidden = true
        
        setTextField1.isHidden = true
        setTextField2.isHidden = true
        setTextField3.isHidden = true
        setTextField4.isHidden = true
        setTextField5.isHidden = true
        setTextField6.isHidden = true
        setTextField7.isHidden = true
        setTextField8.isHidden = true
        
        repsTextField1.isHidden = true
        repsTextField2.isHidden = true
        repsTextField3.isHidden = true
        repsTextField4.isHidden = true
        repsTextField5.isHidden = true
        repsTextField6.isHidden = true
        repsTextField7.isHidden = true
        repsTextField8.isHidden = true
    }
    
    @IBOutlet weak var repsTextField8: UITextField!
    @IBOutlet weak var repsTextField7: UITextField!
    @IBOutlet weak var repsTextField6: UITextField!
    @IBOutlet weak var repsTextField5: UITextField!
    @IBOutlet weak var repsTextField4: UITextField!
    @IBOutlet weak var repsTextField3: UITextField!
    @IBOutlet weak var repsTextField2: UITextField!
    @IBOutlet weak var repsTextField1: UITextField!
    @IBOutlet weak var setTextField8: UITextField!
    @IBOutlet weak var setTextField7: UITextField!
    @IBOutlet weak var setTextField6: UITextField!
    @IBOutlet weak var setTextField5: UITextField!
    @IBOutlet weak var setTextField4: UITextField!
    @IBOutlet weak var setTextField3: UITextField!
    @IBOutlet weak var setTextField2: UITextField!
    @IBOutlet weak var setTextField1: UITextField!
    @IBOutlet weak var exTextField8: UITextField!
    @IBOutlet weak var exTextField7: UITextField!
    @IBOutlet weak var exTextField6: UITextField!
    @IBOutlet weak var exTextField5: UITextField!
    @IBOutlet weak var exTextField4: UITextField!
    @IBOutlet weak var exTextField3: UITextField!
    @IBOutlet weak var exTextField2: UITextField!
    @IBOutlet weak var exTextField1: UITextField!
}

