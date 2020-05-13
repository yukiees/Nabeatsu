//
//  ViewController.swift
//  Nabeatsu
//
//  Created by 松島優希 on 2020/05/13.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    var count3 = false
    var count7 = false
    var count21 = false
    var facemark:Bool!
    
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var ahoface: UILabel!
    
    @IBOutlet weak var countbutton: UIButton!
    
    @IBOutlet weak var clearbutton: UIButton!
    
    @IBAction func plus() {
        number = number + 1
        counter.text = String(number)
        
        if (number % 3 == 0 || number / 10 == 3 || number % 10 == 3){
            count3 = true
        }else{
            count3 = false
        }
        
        if (number % 7 == 0 || number / 10 == 7 || number % 10 == 7){
            count7 = true
        }else{
            count7 = false
        }
        
        if (number % 21 == 0){
            count21 = true
        }else{
            count21 = false
        }
        
        if count21{
            ahoface.text = String("Σ(QДo´怒)")
        }else if count3{
            ahoface.text = String("٩( ᐛ )وｱﾋｬ")
        }else if count7{
            ahoface.text = String("(　˙-˙　)")
        }else{
            ahoface.text = String("( ´ ▽ ` )")
        }
        
        if number >= 100 {
            number = 0
        }
    }
    
    @IBAction func clear(){
        number = 0
        counter.text = String(number)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  


}

