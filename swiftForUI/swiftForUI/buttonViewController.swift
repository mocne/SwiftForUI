//
//  buttonViewController.swift
//  swiftForUI
//
//  Created by 彭凯锋 on 2017/3/10.
//  Copyright © 2017年 pengkaifeng. All rights reserved.
//

import UIKit

class buttonViewController: UIViewController {

    var button = UIButton.init(frame: CGRect(x: 0, y: 0, width: 200, height: 250))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.

        button.center = view.center
        button.backgroundColor = UIColor.lightGray
        button.setTitle("点我吧", for: .normal)
        button.setTitle("真的点了", for: .highlighted)
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.setTitleColor(UIColor.red, for: UIControlState.highlighted)
        button.titleLabel?.frame.size = CGSize(width: button.frame.size.width, height: 50)
        button.titleLabel?.backgroundColor = UIColor.blue
        button.titleLabel?.contentMode = UIViewContentMode.bottom

        button.setImage(UIImage.init(named: "1"), for: UIControlState.normal)
        button.setImage(UIImage.init(named: "2"), for: UIControlState.highlighted)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)

        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func touchButton() {
        print("点击Button")
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
