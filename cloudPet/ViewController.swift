//
//  ViewController.swift
//  cloudPet
//
//  Created by worker on 2021/8/31.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
    //朋友按鈕
    @IBOutlet weak var dogButton: UIButton!
    @IBOutlet weak var robotButton: UIButton!
    @IBOutlet weak var uncleButton: UIButton!
    @IBOutlet weak var girlButton: UIButton!
    @IBOutlet weak var boyButton: UIButton!
    @IBOutlet weak var hatGirlButton: UIButton!
    
    //問好分段
    
    @IBOutlet weak var greetingSegmentControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func friendSpeechButton(_ sender: UIButton) {
        //點選問好
       var friendUtterance = AVSpeechUtterance()
        if greetingSegmentControl.selectedSegmentIndex == 0 {
            if sender == dogButton {
                friendUtterance = AVSpeechUtterance(string: "最近還好嗎")
            }
            
            if sender == robotButton {
                friendUtterance = AVSpeechUtterance(string: "累了嗎")
            }
            
            if sender == uncleButton {
                friendUtterance = AVSpeechUtterance(string: "你很棒")
            }
            
            if sender == girlButton {
                friendUtterance = AVSpeechUtterance(string: "早安")
            }
            
            if sender == boyButton {
                friendUtterance = AVSpeechUtterance(string: "晚安")
            }
            
            if sender == hatGirlButton {
                friendUtterance = AVSpeechUtterance(string: "吃飽了嗎")
            }
            
            //選擇語言
            friendUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
  
        }else if greetingSegmentControl.selectedSegmentIndex == 1 {
            if sender == dogButton {
                friendUtterance = AVSpeechUtterance(string: "霹靂卡霹靂拉拉 波波力那貝貝魯多")
            }
            if sender == robotButton {
                friendUtterance = AVSpeechUtterance(string: "拍拍砰呸 噗哇噗哇噗")
            }
            if sender == uncleButton {
                friendUtterance = AVSpeechUtterance(string: "帕美魯克拉魯克 拉哩摟哩波噴")
            }
            if sender == girlButton {
                friendUtterance = AVSpeechUtterance(string: "噗魯魯噗魯 發咪發咪發")
            }
            if sender == boyButton {
                friendUtterance = AVSpeechUtterance(string: "佩魯坦佩登 啪拉力拉碰")
            }
            if sender == hatGirlButton {
                friendUtterance = AVSpeechUtterance(string: "皮皮多 噗力多 噗力當貝貝魯多")
            }
            
            //選擇語言
            friendUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")

        }
        
        let friendSynthesizer = AVSpeechSynthesizer()
        friendSynthesizer.speak(friendUtterance)
   
    }
    

}

