//
//  ViewController.swift
//  JLProgressBar-swift
//
//  Created by Jacky Li on 3/10/14.
//  Copyright (c) 2014 Jacky Li. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource{
    
    var items: [String] = ["Gravity", "Collision", "Attachment", "Advanced Attachment", "Snap", "Push"]

    override func viewDidLoad() {
        self.navigationItem.title = "Dynamic Behaviour"
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel?.text = items[indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var gravityViewController: GravityViewController = GravityViewController()
        self.navigationController?.pushViewController(gravityViewController, animated: false)
    }
}

