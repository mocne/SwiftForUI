//
//  textViewViewController.swift
//  swiftForUI
//
//  Created by 彭凯锋 on 2017/3/14.
//  Copyright © 2017年 pengkaifeng. All rights reserved.
//

import UIKit

class textViewViewController: UIViewController,UITextViewDelegate {

    var textView = UITextView.init(frame: CGRect(x: 100, y: 100, width: 200, height: 200))


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.

        textView.delegate = self
        textView.backgroundColor = UIColor.lightGray
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.black.cgColor

        textView.isEditable = true
        textView.isSelectable = true

        textView.text = "sdfghjkliuytrertyuikjhddfghjkjhgf"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.textColor = UIColor.orange
        textView.textAlignment = NSTextAlignment.left

        //添加链接目标（电话和地址）
        textView.dataDetectorTypes = UIDataDetectorTypes.all

        view.addSubview(textView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
