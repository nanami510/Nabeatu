//
//  ViewController.swift
//  nabeatsu
//
//  Created by litech on 2015/03/11.
//  Copyright (c) 2015年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(0)
    }
    func isDog() ->Bool{
        if number % 5 == 0 {
            return true
        } else{
            return false
        }
    }
    func isSmart() ->Bool{
        var checkNum2: Int = 0
        var checkresult: Int = 0
        checkNum2 = number
        for i in 1 ..< checkNum2 {
            if checkNum2 % i == 0{
                checkresult = checkresult + 1
            }
        }
        if checkresult < 2
        {
            return true
        }else{
            return false
        }
    }
    
    func isAho() ->Bool{
        //問題1: ３の倍数かどうか調べる
       
        
        //問題2
        if number % 7 == 0
        {
            return false
        }else if number % 3 == 0 {
            return true
        }else
        {
            var checkNum: Int = 0
            checkNum = number
            
            while checkNum != 0 {
                if checkNum % 10 == 3 {
                    return true
                }else{
                    checkNum = checkNum / 10
                }
            }
            return false

        }
        
       
        //問題3,問題4
        //問題4をやるときは問題3の答えをコメントアウトしてから書こう
        
    }
    func isAho2(){
    
    }

    @IBAction func plusButton(){
        number = number + 1
        label.text = String(number)
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if isDog() == true{
            faceLabel.text = "U･ェ･U"
        } else if isSmart() == true{
             faceLabel.text = "^-^"
        }else{
            faceLabel.text = "(゜o゜)"
        }
    }
    @IBAction func clearButton(){
        number=0
        label.text = String(number)   
    }
    @IBAction func randamButton(){
        let randam = arc4random_uniform(100)
        number = Int(randam)
        label.text = String(number)
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if isDog() == true{
            faceLabel.text = "U･ェ･U"
        } else if isSmart() == true{
            faceLabel.text = "^-^"
        }else{
            faceLabel.text = "(゜o゜)"
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
