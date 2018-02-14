//
//  ViewController.swift
//  DatePicker
//
//  Created by home on 2018/02/14.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Picker: UIDatePicker!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func GetDate(_ sender: Any) {

        //日付のフォーマットを指定する。
        let format = DateFormatter()
        format.dateFormat = "M月d日 HH:mm"
        
        //日付をStringに変換する
        let sDate = format.string(from: Picker.date)
        
        print(sDate)
        
        Label.text = "\(sDate)"
    }
    
}

