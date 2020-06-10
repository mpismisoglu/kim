import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var p1: UITextField!
    
    @IBOutlet weak var p6: UITextField!
    @IBOutlet weak var p5: UITextField!
    @IBOutlet weak var p4: UITextField!
    @IBOutlet weak var p3: UITextField!
    @IBOutlet weak var p2: UITextField!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
     NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);

     NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
     resetCounter()
    }
    
    @objc func keyboardWillShow(sender: NSNotification) {
         self.view.frame.origin.y = -140 // Move view 150 points upward
    }

    @objc func keyboardWillHide(sender: NSNotification) {
         self.view.frame.origin.y = 0 // Move view to original position
    }
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
@objc func resetCounter()
{
    counter = 0
    }
    func makeAlert(titleInput:String, messageInput:String) {
        
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
                   
                   let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil)
                   alert.addAction(okButton)
                   self.present(alert, animated: true, completion: nil)
    }
    @IBAction func startGame(_ sender: Any) {
        let defaults = UserDefaults.standard
               if p1.text != nil {
               defaults.set(p1.text, forKey: "p1name")
            
               }
                if p2.text != nil {
               defaults.set(p2.text, forKey: "p2name")
                  
               }
                if p3.text != nil {
               defaults.set(p3.text, forKey: "p3name")
                  
               }
                if p4.text != nil {
               defaults.set(p4.text, forKey: "p4name")
                   
               }
                if p5.text != nil {
               defaults.set(p5.text, forKey: "p5name")
                   

               }
               if  p6.text != nil {
               defaults.set(p6.text, forKey: "p6name")
                

               }
        
        
        if p1.text == "" && p2.text == "" && p3.text == "" && p4.text == "" && p5.text == "" && p6.text == ""  {
            makeAlert(titleInput: "Çok az oldu :(", messageInput: "Oyuna başlamak için en az bir kişi gerekli")
        }
        else
        {
            
            performSegue(withIdentifier: "ToPlayVC", sender: self)
        }
        
    }
    
    
}

