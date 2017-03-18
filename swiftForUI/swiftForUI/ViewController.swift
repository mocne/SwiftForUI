//
//  ViewController.swift
//  swiftForUI
//
//  Created by 彭凯锋 on 2017/3/9.
//  Copyright © 2017年 pengkaifeng. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var cellNames:[String]?
    var tableView:UITableView?


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view, typically from a nib.

        /**
         *   初始化数据
         */
        let filePath = Bundle.main.path(forResource: "data.plist", ofType:nil )

        cellNames = NSArray.init(contentsOfFile: filePath!) as! [String]?

        print(self.cellNames as Any)

        tableView = UITableView.init(frame: view.frame, style: UITableViewStyle.plain)
        tableView!.delegate = self
        tableView!.dataSource = self
        self.view.addSubview(tableView!)
        self.title = "UI"
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (cellNames?.count)!
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identify:String = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identify)
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: identify)
        }
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell?.textLabel?.text = cellNames?[indexPath.row]
        cell?.backgroundView?.backgroundColor = UIColor.green

        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.isSelected = false

        switch indexPath.row {
        case 0:
            let vc = labelViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 1:
            let vc = buttonViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 2:
            let vc = textViewViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 3:
            let vc = textFieldViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 4:
            let vc = switchViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 5:
            let vc = segmentViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 6:
            let vc = imageViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 7:
            let vc = progressViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 8:
            let vc = sliderViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        case 9:
            let vc = alerterViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        default:
            break
        }
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

