//
//  labelViewController.swift
//  swiftForUI
//
//  Created by 彭凯锋 on 2017/3/9.
//  Copyright © 2017年 pengkaifeng. All rights reserved.
//

import UIKit

class labelViewController: UIViewController {

    var label:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.

        label = UILabel.init(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label?.backgroundColor = UIColor.lightGray
        label?.text = "this is a label"
        label?.textAlignment = NSTextAlignment.center
        label?.textColor = UIColor.green
        label?.layer.cornerRadius = 15
        label?.layer.masksToBounds = true
        label?.layer.borderColor = UIColor.black.cgColor
        label?.layer.borderWidth = 2
        view.addSubview(label!)
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
