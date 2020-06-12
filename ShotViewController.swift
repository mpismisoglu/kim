

import UIKit
import GoogleMobileAds
var counter = 3
class ShotViewController: UIViewController {
  var interstitial: GADInterstitial!
   
    @IBOutlet weak var field: UITextView!
    @IBOutlet weak var shotAdet: UILabel!
    @IBOutlet weak var shotLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    interstitial = GADInterstitial(adUnitID: "ca-app-pub-3407628874905272/9645572185")
        let request = GADRequest()
           interstitial.load(request)
        
        var shotArray = [String]()
        var dareArray = [String]()

        shotArray.append("1 shot at")
        shotArray.append("2 shot at")
        shotArray.append("3 shot at")
        


        let number = Int.random(in: 0 ... 2)
        let number2 = Int.random(in: 0 ... 57)
      
        
        
        dareArray.append("Telefonundaki en utanç verici fotoğrafı göster")
        dareArray.append("50 squat yap")
        dareArray.append("Ağzına üç buz kalıbı koy ve eriyene kadar bekle")
        dareArray.append("Mevcut olan herhangi 5 sıvıyı karıştır ve iç")
        dareArray.append("Üzerinden iki çeşit kıyafet çıkar")
        dareArray.append("Aklına gelen ilk kelimeyi bağırarak söyle")
        dareArray.append("Instagramda önüne çıkan ilk postun sahibini takipten çıkar")
        dareArray.append("Bir kaşık hardal ye")
        dareArray.append("Seksi bir şekilde muz ye")
        dareArray.append("1 dakika boyunca twerk yap")
        dareArray.append("Grubu 10 saniye içinde güldürmeye çalış. Yapamazsan 5 shot at")
        dareArray.append("Dirseğini yalamaya çalış")
        dareArray.append("Hayali bir direk üstünde direk dansı yap")
        dareArray.append("Orgazm taklidi yap")
        dareArray.append("Sağındaki kişiye ayak masajı yap")
        dareArray.append("Solundaki kişiye dirty talk yap")
        dareArray.append("Grubun senin telefonundan seçtikleri birine DM atmalarına izin ver")
        dareArray.append("Mesaj attığın son 5 kişiyle olan sohbetlerini göster")
        dareArray.append("Birini aldatıp aldatmadığını söyle")
        dareArray.append("Fetişin olup olmadığını söyle")
        dareArray.append("En büyük korkunu söyle")
        dareArray.append("En kötü geçen buluşmanı anlat")
        dareArray.append("Seks yaptığın en ilginç yeri söyle")
        dareArray.append("Son ilişkinin neden bittiğini söyle")
        dareArray.append("Kendi seçtiğin bir kişiye kucak dansı yap")
        dareArray.append("10 dakika boyunca sağındaki kişi gibi davran")
        dareArray.append("Telefonundaki en eski tarihli fotoğrafını Instagrama koy")
        dareArray.append("30 saniye boyunca kurt gibi ulu")
        dareArray.append("İnternet arama geçmişini göster")
        dareArray.append("Gruptaki en güzel giyinen kişinin adını söyle")
        dareArray.append("En kötü alışkanlığını söyle")
        dareArray.append("5 dakika boyunca konuşmaya aksanlı devam et")
        dareArray.append("5 dakika boyunca gruptan birinin evcil hayvanı gibi davran")
        dareArray.append("Arkadaşların saçını kessin")
        dareArray.append("Kafanda iki yumurta kır")
        dareArray.append("Erkeksen makyaj yap, kadınsan makyajını sil")
        dareArray.append("Solundaki insanla ayrılık konuşması yap")
        dareArray.append("Karşı cins biri ile üstünüzü değişin")
        dareArray.append("Seçtiğin biri suratına tokat atsın")
        dareArray.append("İki dakika boyunca gülümseyerek devam et")
        dareArray.append("Tuvalete bir çöp atıp onu geri al")
        dareArray.append("1 dakika boyunca durmadan zıpla")
        dareArray.append("Solundaki kişiye serenat yap")
        dareArray.append("Birini seç ve oyun bitmeden onu korkut")
        dareArray.append("Topuklu ayakkaıyla yürüyormuş gibi yürü")
        dareArray.append("Dudaklarını oynatmadan alfabeti oku")
        dareArray.append("Başkan konuşması yap")
        dareArray.append("Çiğ yumurta ye")
        dareArray.append("Arkadaşlarının seçtiği bir kelimeyi söylemen 15 dakika boyunca yasak olucak")
        dareArray.append("Çiftleşen horoz taklidi yap")
        dareArray.append("Gruptan biriyle seks yapıyor olsan kimin olmasını istediğini söyle")
        dareArray.append("Kafandan aşağı buzlu su dök")
        dareArray.append("Sağındaki kişi çoraplarını çıkarıp sana koklatsın")
        dareArray.append("Bir sırrını söyle")
        dareArray.append("Bir parça tuvalet kağıdı ye")
        dareArray.append("Ağzında su varken şarkı söylemeye çalış")
        dareArray.append("Dinlediğin için utandığın bir şarkıcının kim olduğunu söyle")
        dareArray.append("Gözün kapalı sandviç yapmaya çalış")






        field.text = dareArray[number2]

        
        
         
        
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
        if counter % 4 == 0 {
            
         if interstitial.isReady {
       
       interstitial.present(fromRootViewController: self)
       counter += 1
     }
            else
         {
            performSegue(withIdentifier: "FromShotVC", sender: self)

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
