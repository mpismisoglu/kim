

import UIKit
import GoogleMobileAds
var counter = 3
class ShotViewController: UIViewController {
  var interstitial: GADInterstitial!
   
    @IBOutlet weak var shotAdet: UILabel!
    @IBOutlet weak var shotLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    interstitial = GADInterstitial(adUnitID: "ca-app-pub-3407628874905272/9645572185")
        let request = GADRequest()
           interstitial.load(request)
        
        var shotArray = [String]()
        shotArray.append("Seçtiğin kişiye 1 shot attır")
        shotArray.append("Seçtiğin kişiye 2 shot attır")
        shotArray.append("Seçtiğin kişiye 3 shot attır")
        shotArray.append("1 shot at")
        shotArray.append("2 shot at")
        shotArray.append("3 shot at")
        shotArray.append("Senin dışında herkes 1 shot atsın")
        shotArray.append("Senin dışında herkes 2 shot atsın")
        shotArray.append("Senin dışında herkes 3 shot atsın")

        let number = Int.random(in: 0 ... 8)
         
        
        shotAdet.text = shotArray[number]
        
        changeLabel()
        
        


   
    }
    
    @objc func changeLabel() {
        let defaults = UserDefaults()
               let p1v = defaults.integer(forKey: "p1value")
         
               let p1name = defaults.string(forKey: "p1name")
                    let p2name = defaults.string(forKey: "p2name")
                    let p3name = defaults.string(forKey: "p3name")
                    let p4name = defaults.string(forKey: "p4name")
                    let p5name = defaults.string(forKey: "p5name")
                    let p6name = defaults.string(forKey: "p6name")
        if p1v == 1
        {
           shotLabel.text = p1name
        }
           
           if p1v == 2
           {
              shotLabel.text = p2name

           }
           if p1v == 3
           {
              shotLabel.text = p3name

           }
           if p1v == 4
           {
              shotLabel.text = p4name

           }
           if p1v == 5
           {
              shotLabel.text = p5name

           }
           if p1v == 6
           {
              shotLabel.text = p6name

           }


    }

    @IBAction func devam(_ sender: AnyObject) {
        if counter % 3 == 0 {
            
         if interstitial.isReady {
       
       interstitial.present(fromRootViewController: self)
       counter += 1
     }
        }
     else {
      performSegue(withIdentifier: "FromShotVC", sender: self)
       counter += 1
        }
        
   
        
    }
    
    @IBAction func bastanBasla(_ sender: Any) {
        
   
        performSegue(withIdentifier: "bastanbasla", sender: self)
      
    }
}
