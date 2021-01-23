//
//  GameViewController.swift
//  finalProjectPart1
//
//  Created by Inderpreet Singh on 2020-07-21.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//
import AVFoundation

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var optionACopy: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var Question: UITextView!
    @IBOutlet weak var optionDCopy: UIButton!
    @IBOutlet weak var optionCCopy: UIButton!
    @IBOutlet weak var optionBCopy: UIButton!
    @IBOutlet weak var QuestionTextView: UITextView!
    
    let hints = ["In 1949 the last provinces to join Canada was Newfoundland and Labrador", "Because Canada is the second biggest country on Earth and needs a lot of time zones to cover the country.", "Snag in the Yukon set the record for the lowest temperature in Canada.", "It has the most beautiful sunsets and 14 kilometers of white sand.", "It's temperatures dropped to minus 29 degrees Celsius (minus 20 Fahrenheit), three degrees colder than Mongolia's capital, Ulan Bator.", "numerous skyscrapers, owes its rapid growth to its status as the centre of Canada’s oil industry.", "Formerly a large company town owned by Crown Zellerbach, it is accessible only via boat or seaplane, and is home for a few dozen full-time residents", "It lies between Canada’s Nova Scotia and New Brunswick provinces", "He/She passed away on June 28, 1981 at age 22, but not before realizing his dream of raising $1 for every Canadian - $24.17 million.", "the second-highest peak in North America, after Denali", "Population on Canada is 35.15 million in 2016.", "Both national games are played with ball and wooden piece.", "literacy rate for 2015 was 99.00%, a 0% increase from 2010.", "The median age of Canada's population has grown by 10.2 years in the past 30 years", "Canadians don't use an American accent. They pronounce 'responding' like 'raspawnding'.", "Toronto is most populated city in Canada.", "Canada host olympics first time in 1976 and last time in 2010. ", "Out of three choices, the maple leaf design by George Stanley, based on the flag of the Royal Military College of Canada, was selected.", "The great majority of premium cigars produced for the U.S. today come from those countries.", "Pekwachnamay... is a lake of Manitoba.","the last Winter Olympics in Sochi in 2014 only saw 88 countries participate.", "The Canary Islands are a part of Spain largely because of a Norman explorer called Jean de Béthencourt who colonized El Hierro, Fuerteventura, and Lanzarote in the early 15th century.","sets out a global framework to avoid dangerous climate change by limiting global warming to well below 2°C and pursuing efforts to limit it to 1.5°C."]
    
    
     let ques = ["Canada has ___ provinces and ___ territories? ", "Canada has ____ time zones?", "Coldest temperature recorded in Canada was?","Longest fresh water beach in the world?","Coldest Capital in the world?", "Sunniest place in Canada with 2,587 hours of sunshine is?", "Ocean falls, British columbua has an average of ___ days of rain per year?","The highrst tides in the world occurs in?","Which Canadian attempted a one-legged cross country run for cancer research?","The highest mountain in Canada is?","The population in Canada in 2018 was approximately?", "Canada’s national sports?","Canada’s literacy rate is over?", "The median age in Canada is?", "If you want to make an American smile, ask a Canadian to say ?", "About 90% of Canada’s population is concentrated within ___ kilometres (___ miles) of the Canada/US border?", "Canada has hosted the Olympic Games _____ times?", "The National Flag of Canada came into being in?","How many countries use purple in their national flags?", "The longest place name on the planet is __ letters long?", "A record-breaking ____ countries competed in the 2018 Winter Olympics.?", "The Canary Islands are named after?", "The ___ Agreement on climate change was signed by the largest number of countries ever in one day.?" ];
    
    
    
       let ans = [ ["10, 3", "11, 3", "12, 3", "13, 3"], ["6", "7", "5", "8"], ["-63 C (-81.4 F)", "-85 C (-102.4 F)", "-66 C (-84.4 F)", "-72 C (-99.4 F)"], ["Wassaga Beach", "Queen's East side Beach", "Vancouver Beach", "Fresh water lake"], ["Ottawa","Moscow","Berlin","Madrid" ], ["Calgary, Alberta","North Bay, Ontario","Toronto, Ontaio","Douglas, Vancouver" ], ["330","169","225","302" ], ["Bay of Fundy in New Brunswick","Thunder Bay, Ontario","St. John's, Labrador","Teslin, Yukon" ], ["Terry Fox","Keneddy Kane","Richard Brooks","Azalea Mancinni" ], ["Mount Logan, Yukon Territory","Mount Waddington, British Colombia","Mount Columbia, Alberta","Mount Lucania, Yukon" ], ["37.06 million","39.1 million","36.6 million","32.5 million" ], ["Hockey and lacrosse","Baseball and Hockey","Baseball and lacrosse","Soccer and Baseball" ], ["99%","88%","82%","94%" ], ["41 years","44 years","42 years","45 years" ], ["out and about","cheese","smile","none of above" ], ["160km, 100miles","130Km 80 miles","100Km 60 miles","150Km 90miles" ], ["3 times","5 times","6 times","only once" ], ["1965","1975","1966","1961" ], ["2","1","3","5" ], ["85","55","45","75" ], ["92","87","81","85" ], ["dogs","rats","wolfs","rakoons" ], ["Paris","Asian","London","American" ]];
       var currentQues = 0;
       var rightAns:UInt32 = 0;
       var score = 0;
    var DoubleDip = false;
    var flip = 0;
    
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // PlaySound(sound: "Kbc Background", type: "mp3")
        // Do any additional setup after loading the view.
    }
    
     override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }
    
     override func viewDidAppear(_ animated: Bool) {
           nextQues()
       }

    @IBAction func doubleDip(_ sender: UIButton) {
         sender.isEnabled = false
        DoubleDip = true;
        label2.text = "Double Dip in use"
    }
    
    @IBAction func flipTheQuestion(_ sender: UIButton) {
        sender.isEnabled = false
        flip = 1;
        nextQues()
        
    }
    
    @IBAction func fiftyFifty(_ sender: UIButton) {
         sender.isEnabled = false
        label2.text = "50:50 Enabled";
        if(rightAns == 1 || rightAns == 4){
            optionBCopy.backgroundColor = UIColor.gray;
            optionCCopy.backgroundColor = UIColor.gray;
            optionBCopy.isEnabled = false;
            optionCCopy.isEnabled = false;
        }else{
            optionACopy.backgroundColor = UIColor.gray;
            optionDCopy.backgroundColor = UIColor.gray;
            optionACopy.isEnabled = false
            optionDCopy.isEnabled = false
        }
        
    }
    
    
    @IBAction func hint(_ sender: UIButton) {
         sender.isEnabled = false
        label2.text = hints[currentQues-1]
    }
    
    @IBAction func optionA(_ sender: Any) {
  //      createAlert(title: "Confirmation!", message: "Are you sure you want to choose this option?")
        
          if((sender as AnyObject).tag == Int(rightAns)){
                 
            optionACopy.backgroundColor = UIColor.green
            DoubleDip = false;
            label2.text = "";
             print("YES!!")
            score = score + 1;
            
            
          }else{
            
            optionACopy.backgroundColor = UIColor.gray;
            if(DoubleDip == false){
                performSegue(withIdentifier: "scoreSegue", sender: self)
            }
                        
       
                  print("Wrong!!")
              }
              //print("if ends");
 
        diableOptions();
        trueOption();
              if(currentQues != ques.count){
                if(DoubleDip == true){
                    DoubleDip = false;
                    label2.text = "";
                }else{
                    DispatchQueue.main.asyncAfter(deadline: .now()+3.0 ){
                        //self.optionACopy.backgroundColor = UIColor.link
                        self.samecolor()
                        self.enableOptions();
                        self.nextQues();
                        
                    }
                }
              }
        
    }
    

    
    @IBAction func optionB(_ sender: Any) {
     //   createAlert(title: "Confirmation!", message: "Are you sure you want to choose this option?")
          
                if((sender as AnyObject).tag == Int(rightAns)){
                           optionBCopy.backgroundColor = UIColor.green;
                    
                  DoubleDip = false;
                  label2.text = "";
                   print("YES!!")
                  score = score + 1;
                  
                }else{
                        optionBCopy.backgroundColor = UIColor.gray;
                    print("Wrong!!")
                    if(DoubleDip == false){
                        performSegue(withIdentifier: "scoreSegue", sender: self)
                    }
                    
                    }
                    //print("if ends");
                    diableOptions()
        trueOption();
              
                    if(currentQues != ques.count){
                      if(DoubleDip == true){
                          DoubleDip = false;
                          label2.text = "";
                      }else{
                        DispatchQueue.main.asyncAfter(deadline: .now()+3.0 ){
                           // self.optionBCopy.backgroundColor = UIColor.link
                            self.samecolor()
                            self.enableOptions()
                            self.nextQues();
                            
                        }
                        
                        }
                    }
              
    }
    
    @IBAction func optionC(_ sender: Any) {
      //  createAlert(title: "Confirmation!", message: "Are you sure you want to choose this option?")
        
                if((sender as AnyObject).tag == Int(rightAns)){
                           optionCCopy.backgroundColor = UIColor.green;
                    
                  DoubleDip = false;
                  label2.text = "";
                   print("YES!!")
                  score = score + 1;
                  
                }else{
                        optionCCopy.backgroundColor = UIColor.gray;
                    
                        print("Wrong!!")
                    
                    if(DoubleDip == false){
                        performSegue(withIdentifier: "scoreSegue", sender: self)
                    }
                    
        }
                   // print("if ends");
        diableOptions()
        trueOption();
              
                    if(currentQues != ques.count){
                      if(DoubleDip == true){
                          DoubleDip = false;
                          label2.text = "";
                      }else{
                        DispatchQueue.main.asyncAfter(deadline: .now()+3.0 ){
                            //self.optionCCopy.backgroundColor = UIColor.link
                            self.samecolor()
                            self.enableOptions()
                            self.nextQues();
                            
                        }
                      }
                    }
              
    }
    
    @IBAction func optionD(_ sender: Any) {
   //     createAlert(title: "Confirmation!", message: "Are you sure you want to choose this option?")
          
                if((sender as AnyObject).tag == Int(rightAns)){
                           optionDCopy.backgroundColor = UIColor.green;
                    
                  DoubleDip = false;
                  label2.text = "";
                   print("YES!!")
                  score = score + 1;
                  
                }else{
                        optionDCopy.backgroundColor = UIColor.gray;
                    print("Wrong!!")
                    if(DoubleDip == false){
                        performSegue(withIdentifier: "scoreSegue", sender: self)
                    }
                    }
                  //  print("if ends");
        diableOptions()
        trueOption()
              
                    if(currentQues != ques.count){
                      if(DoubleDip == true){
                          DoubleDip = false;
                          label2.text = "";
                      }else{
                     DispatchQueue.main.asyncAfter(deadline: .now()+3.0 ){
                           // self.optionDCopy.backgroundColor = UIColor.link
                        self.samecolor()
                        
                        self.enableOptions()
                            self.nextQues();
                            
                        }
                      }
                    }
                  }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ScoreViewController
        vc.score = String(self.score)
    }
    
    func createAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        
        alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default , handler: {(action) in
            alert.dismiss(animated: true, completion: nil)}));
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default , handler: {(action) in
            alert.dismiss(animated: true, completion: nil)}));
        
        self.present(alert,animated: true,completion: nil)
        
    }
    /*
     // MARK: - Navigation
     
     @IBAction func optionA(_ sender: Any) {
     }
     @IBAction func OptionA(_ sender: Any) {
     }
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func nextQues(){

        if(flip == 1){
            questionLabel.text = "Question: " + String(currentQues)
            
        }else{
        questionLabel.text = "Question: " + String(currentQues+1)
        }
        Question.text = ques[currentQues];
        //questionLabel.text = "Question: " + String(currentQues+1)
         rightAns = arc4random_uniform(4)+1
         
         var button:UIButton = UIButton();
         
         var x = 1;
         
         for i in 1...4{
             button = view.viewWithTag(i) as! UIButton
             
             if(i == Int(rightAns)){
                 button.setTitle(ans[currentQues][0], for: .normal)
             }else{
                 button.setTitle(ans[currentQues][x], for: .normal)
                 if( x == 1 ){
                     x = 2
                 }else{
                     x = 3
                 }
                 
             }
         }
         currentQues += 1
     }
    
    
    func diableOptions(){
        optionACopy.isEnabled = false
        optionBCopy.isEnabled = false
        optionCCopy.isEnabled = false
        optionDCopy.isEnabled = false
        
    
    }
    func enableOptions(){
       
        optionACopy.isEnabled = true
        optionBCopy.isEnabled = true
        optionCCopy.isEnabled = true
        optionDCopy.isEnabled = true
        
    
    }
    func trueOption(){
         if(Int(rightAns) == 1){
                   optionACopy.backgroundColor = UIColor.green
               }else if(Int(rightAns) == 2){
                   optionBCopy.backgroundColor = UIColor.green
               }else if(Int(rightAns) == 3){
                   optionCCopy.backgroundColor = UIColor.green
               }else{
                   optionDCopy.backgroundColor = UIColor.green
               }
        
    }
    func samecolor(){

                   optionACopy.backgroundColor = UIColor.link

                   optionBCopy.backgroundColor = UIColor.link
 
                   optionCCopy.backgroundColor = UIColor.link
               
                   optionDCopy.backgroundColor = UIColor.link
               
        
    }
    
    /*func PlaySound(sound: String, type:String){
        if let path = Bundle.main.path(forResource: sound, ofType: type){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            }catch{
                print("Could'nnt find file to play audio");
            }
        }
    }*/
    
    }
