//
//  ViewController.swift
//  Moving_Text_Demo
//
//  Created by 준수김 on 2021/10/12.
//

import UIKit
import MarqueeLabel

class ViewController: UIViewController {
    
    @IBOutlet weak var marqueeLabel: MarqueeLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.marqueeLabel.type = .continuous
        self.marqueeLabel.speed = .duration(15)
        self.marqueeLabel.animationCurve = .easeInOut
        self.marqueeLabel.fadeLength = 10.0
        self.marqueeLabel.leadingBuffer = 30.0
        
        let strings = ["오늘의 총 확진자 수는 165명 입니다. 전일 대비 확진자 수 가 29명 증가하였으니 안전한 하루 보내시길 바랍니다."]
        
        self.marqueeLabel.text = strings[Int(arc4random_uniform(UInt32(strings.count)))]
    }
    
}

