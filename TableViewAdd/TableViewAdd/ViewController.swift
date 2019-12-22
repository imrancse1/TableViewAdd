//
//  ViewController.swift
//  TableViewAdd
//
//  Created by Zakaria on 10/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit
    var itemlist = ["Eclair", "Honey", "Eclair", "Honey", "Eclair", "Honey"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = mTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        customCell.imageView?.image = UIImage(named: itemlist[indexPath.row])
        print("Hi \(indexPath.row)")
        return customCell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

