

import UIKit

class PlayVC: UIViewController {
    @IBOutlet weak var question: UITextView!
    
    @IBOutlet weak var p1but: UIButton!
    
    @IBOutlet weak var p2but: UIButton!
    
    @IBOutlet weak var p3but: UIButton!
    
    @IBOutlet weak var p4but: UIButton!
    
    @IBOutlet weak var p5but: UIButton!
    
    @IBOutlet weak var p6but: UIButton!
  
    var p1value = 0
    var questions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let p1name = defaults.string(forKey: "p1name")
        let p2name = defaults.string(forKey: "p2name")
        let p3name = defaults.string(forKey: "p3name")
        let p4name = defaults.string(forKey: "p4name")
        let p5name = defaults.string(forKey: "p5name")
        let p6name = defaults.string(forKey: "p6name")
        
        question.isSelectable = false
        
       
  
        
        
       
        
        questions.append("Bir köpek görünce kim tüm hızıyla kaçar?")
        questions.append("Kim tüm sınavlarından 100 alıyor?")
        questions.append("Issız bir adada ilk kim ölürdü?")
        questions.append("Zombi istilası sırasında kim en son ölürdü?")
        questions.append("En çok dedikoduyu kim yapıyor?")
        questions.append("Kim diğerlerinden daha fazla çocuk sahibi olurdu?")
        questions.append("Kimin eşini aldatma ihtimali en fazla?")
        questions.append("Kim cinsiyet değiştirme ameliyatı olurdu?")
        questions.append("Kim hiç karşı cins ile öpüşmemiştir?")
        questions.append("Kim tüm vücudunu dövmeyle kaplatırdı?")
        questions.append("Kim korku filmi izlerken kalp krizi geçirirdi?")
        questions.append("Kim dışarı çıkılan bir gecede arabayı kullanabilmek için alkol almazdı?")
        questions.append("En çok müzeyi kim ziyaret ederdi?")
        questions.append("Kim ilerde en zengin olurdu?")
        questions.append("Kim ilerde en fakir olurdu?")
        questions.append("Kim hep aldatılan taraf olurdu?")
        questions.append("Kim hep aldatan taraf olurdu?")
        questions.append("Kim Justin Bieber konserine gitmek için tüm parasını harcardı?")
        questions.append("Kim uyanır uyanmaz +18 filmler izlerdi?")
        questions.append("Kim diğerlerinden daha önce evlenirdi?")
        questions.append("Kim cinayet işlerdi?")
        questions.append("Kim cinayete kurban giderdi?")
        questions.append("Kim en basit sınavlardan bile 0 alırdı?")
        questions.append("Kim sokakta çıplak dolaştığı için göz altına alınırdı?")
        questions.append("Kim hayvanlarla konuşmaya çalışırdı?")
        questions.append("Kim yemek yerken ağzını şapırdatırdı?")
        questions.append("Kim romantik bir film sonrası ağlardı?")
        questions.append("Kim başarılı bir oyuncu olurdu?")
        questions.append("Kim hiç aşık olmamıştır?")
        questions.append("Kim diğerlerinden önce uyuşturucu denemiştir?")
        questions.append("Kim en yakın arkadaşına aşık olur?")
        questions.append("Kim askere gitmek için gün sayardı?")
        questions.append("Aranızdan en şanslı olan insan kimdir?")
        questions.append("Kim bir ülkeyi en iyi yönetirdi?")
        questions.append("Aranızdan kim en iyi kitabı yazardı?")
        questions.append("Kim başka bir ülkeye taşınabilirdi?")
        questions.append("Aranızdan en nazik olan kim?")
        questions.append("Aranızdan en kaba olan kim?")
        questions.append("Kim aynı cinsiyetten birini öperdi?")
        questions.append("Kim birisi hasta olduğunda ona çorba hazırlardı?")
        questions.append("Kim halka açık alanda ağlardı?")
        questions.append("Kim hayvanat bahçesinde yaşardı?")
        questions.append("Kim tüm parasını bilgisayar oyunlarına harcardı?")
        questions.append("Kim tüm arkadaşlarının doğum günlerini hatırlardı?")
        questions.append("Aranızdan en yakışıklı kim?")
        questions.append("Aranızdan en güzel kim?")
        questions.append("Kim ilerde kariyer olarak striptizi düşünürdü?")
        questions.append("Kim bir çeteye katılırdı?")
        questions.append("Aranızdan en iyi yemek yapan kim?")
        questions.append("Kim NBA oyuncusu olurdu?")
        questions.append("Aranızdan en sadist kim?")
        questions.append("Aranızdan en hassas kim?")
        questions.append("Kim sevdiği sanatçının konserine gidebilmek için her şeyi yapardı?")
        questions.append("Kim bir gay club müdavimi olurdu?")
        questions.append("Kim en uzun süre yaşardı?")
        questions.append("Kim arabasını asla yavaş sürmez?")
        questions.append("Kim Nobel barış ödülü kazanırdı?")
        questions.append("Kim hayatının sonuna kadar bakir/bakire kalırdı?")
        questions.append("Kim yüzüne dövme yaptırırdı?")
        questions.append("Kimin fobi sayısı en fazladır?")
        questions.append("Kim gemiyle dünya turuna çıkardı?")
        questions.append("Kim müfettiş olmak isterdi?")
        questions.append("Kim alkolik olurdu?")
        questions.append("Kim bir koroya katılırdı?")
        questions.append("Kim piyango çıkınca tüm sülalesiyle paylaşırdı?")
        questions.append("Kim 7/24 Instagram kullanıyordur?")
        questions.append("Kim 7/24 Tinder kullanıyordur?")
        questions.append("Kim 7/24 Twitter kullanıyordur?")
        questions.append("Kim estetik ameliyatı geçirirdi?")
        questions.append("Kim stand up komedyeni olurdu?")
        questions.append("Kim her gün devleti şikayet ediyordur?")
        questions.append("Kim üniversite okumazdı?")
        questions.append("En kumarbaz olanınız kimdir?")
        questions.append("Kim Türkiye'yi asla terk etmez?")
        questions.append("Kim cenazede bile kız tavlamaya çalışırdı?")
        questions.append("Kim aynı anda iki kişiyi idare ederdi?")
        questions.append("Kim alarmı hiç ertelemeden uyanır?")
        questions.append("Kim gök gürültüsünden korkardı?")
        questions.append("Kim bir oyun kaybettikten sonra deliye dönerdi?")
        questions.append("Kim bir parti sonrası telefonunu kaybederdi?")
        questions.append("Kim ailesinin arabasını kaçırırdı?")
        questions.append("Kim yalan detektörünü bile aldatırdı?")
        questions.append("Kim diğerlerinden önce kel kalırdı?")
        questions.append("Kimin Youtube kanalı olurdu?")
        questions.append("Kimin bira göbeği vardır?")
        questions.append("Kim tüm öğünlerini dışarıdan söylerdi?")
        questions.append("Kim geçmişte yaşamak isterdi?")
        questions.append("Kim evsiz olurdu?")
        questions.append("Kim karşı cins için şiir yazardı?")
        questions.append("Kim vampir olmak isterdi?")
        questions.append("Aranızdan kim en cinsiyetçidir?")
        questions.append("Kim filozof olurdu?")
        questions.append("Kim bir şekilde Guinness rekorlar kitabına girerdi?")
        questions.append("Kim insanların yanında çekinmeden gaz çıkartırdı?")
        questions.append("Kim Everest dağına tırmanmak isterdi?")
        questions.append("Kim Mars'ta yaşamak isterdi?")
        questions.append("Kim tanıştığı insanların adını unuturdu?")
        questions.append("Kim duş almayı unuturdu?")
        questions.append("Kim arabaıyı park ettiği yeri unuturdu?")
        questions.append("Kim yapılan her şakaya alınırdı?")
        questions.append("Kim diğerlerinden daha çok balık tutardı?")
        questions.append("Kim bir bar sahibi olurdu?")
        questions.append("Kim güzellik salonu sahibi olurdu?")
        questions.append("Kim böcek yerdi")
        questions.append("Kim ilgi çekmek için her şeyi yapardı?")
        questions.append("Kim her buluşmaya geç kalırdı?")
        questions.append("Kim milyon dolarlık bir uygulama geliştirirdi?")
        questions.append("Kim en iyi doktor olurdu?")
        questions.append("Kim en iyi satranç oynardı?")
        questions.append("Kim seri katil olurdu?")
        questions.append("Kim kafein bağımlısıdır?")
        questions.append("Kim diğerlerinden daha fazla sigara içiyordur?")
        questions.append("Kim en iyi FIFA oynar?")
        questions.append("Kim Las Vegas'da bir yabancıyla evlenirdi?")
        questions.append("Kim eski sevgiline hayatı zindan ederdi?")
        questions.append("Kim evlenmeden çocuk yapardı?")
        questions.append("Kim her gece kabus görüyordur?")
        questions.append("Kimin Instagram'daki takipçi sayısı en fazladır?")
        questions.append("Kimin IQ seviyesi en yüksektir?")
        questions.append("Kimin IQ seviyesi en düşüktür?")
        questions.append("Kimin çıplak fotoğrafları yayılırdı?")
        questions.append("Kim evlendikten sonra kesin boşanırdı?")
        questions.append("Kim bir ormanda yaşamak isterdi?")
        questions.append("Kim 1 aydan uzun süre bekar kalamazdı?")
        questions.append("Kim en iyi anne/baba olurdu?")
        questions.append("Kim evde yangın çıkarırdı?")
        questions.append("Kimin üniversite sınavı puanı en yüksektir?")
        questions.append("Kimin üniversite sınavı puanı en düşüktür?")
        questions.append("Kim telefonla konuşmaktan nefret eder?")
        questions.append("Kim tüm gününü yatakta geçirirdi?")
        questions.append("Kim 18 yaşına girer girmez evi terk ederdi?")
        questions.append("Kim söylediği her yalanda yakalanırdı?")
        questions.append("Kim konserlerden nefret eder?")
        questions.append("Aranızdan kim en çabuk sarhoş olurdu?")
        questions.append("Aranızdan kim en geç sarhoş olurdu?")
        questions.append("Kim her yılbaşını ailesiyle geçirir?")
        questions.append("Kim köpek maması yerdi?")
        questions.append("Kimin ingilizcesi en iyi seviyededir?")
        questions.append("Kim en bonkördür?")
        questions.append("Kim en cimridir")
        questions.append("Aranızdan en psikopat kişi kimdir?")
        questions.append("Kim klasik müzik dinler?")
        questions.append("Kim hamburger yeme yarışmasını kazanırdı?")
        questions.append("Kim kendi düğününe bile geç kalırdı?")
        questions.append("Kim MMA sporcusu olmak isterdi?")
        questions.append("Kimin ayak fetişi vardır?")
        questions.append("Kim her sevgilisini ailesiyle tanıştırırdı?")
        questions.append("Kim +18 bir mesajı yanlış kişiye gönderirdi?")
        questions.append("Kim her komplo teorisine inanırdı?")
        questions.append("Kim menüde fiyatlara bakmadan sipariş verirdi?")
        questions.append("Kim her zaman mutludur?")
        
        
        
        
        
        

        


        let arrayCount = questions.count
        let arrayNumber = Int.random(in: 0 ... arrayCount-1)
       
        question.text = questions[arrayNumber]
        
        

        if p1name == ""
        {
            p1but.isHidden = true
        }
        else
        {
            p1but.setTitle(p1name, for: .normal)
        }
        if p2name == ""
        {
          p2but.isHidden = true
            
        }
        else
        {
            p2but.setTitle(p2name, for: .normal)

        }
        if p3name == ""
        {
          p3but.isHidden = true

        }
        else
        {
            p3but.setTitle(p3name, for: .normal)

        }
        if p4name == ""
        {
          p4but.isHidden = true

        }
        else
        {
            p4but.setTitle(p4name, for: .normal)

        }
        if p5name == ""
        {
          p5but.isHidden = true

        }
        else
        {
            p5but.setTitle(p5name, for: .normal)

        }
        if p6name == ""
        {
          p6but.isHidden = true

        }
        else
        {
            p6but.setTitle(p6name, for: .normal)

        }
      
        resetData()
    }
    
    @objc func resetData() {
        p1value = 0
       
    }
    
    @IBAction func p1act(_ sender: Any) {
        p1value = 1
        
        let defaults = UserDefaults.standard
        defaults.setValue(p1value, forKey: "p1value")
        performSegue(withIdentifier: "ToShotVC", sender: self)
    
       
    }
    
    @IBAction func p2act(_ sender: Any) {
        p1value = 2
               
               let defaults = UserDefaults.standard
               defaults.setValue(p1value, forKey: "p1value")
        
        performSegue(withIdentifier: "ToShotVC", sender: self)
    }
    
    @IBAction func p3act(_ sender: Any) {
        p1value = 3
               
               let defaults = UserDefaults.standard
               defaults.setValue(p1value, forKey: "p1value")
        
        performSegue(withIdentifier: "ToShotVC", sender: self)
    }
    
    @IBAction func p4act(_ sender: Any) {
        
        p1value = 4
               
               let defaults = UserDefaults.standard
               defaults.setValue(p1value, forKey: "p1value")
        performSegue(withIdentifier: "ToShotVC", sender: self)
    }
    
    @IBAction func p5act(_ sender: Any) {
        p1value = 5
               
               let defaults = UserDefaults.standard
               defaults.setValue(p1value, forKey: "p1value")
        
        performSegue(withIdentifier: "ToShotVC", sender: self)
    }
    
    @IBAction func p6act(_ sender: Any) {
        p1value = 6
               
               let defaults = UserDefaults.standard
               defaults.setValue(p1value, forKey: "p1value")
        
        performSegue(withIdentifier: "ToShotVC", sender: self)
    }
    
}


