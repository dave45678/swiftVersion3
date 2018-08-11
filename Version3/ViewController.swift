//
//  ViewController.swift
//  Version3
//
//  Created by MC Student on 8/11/18.
//  Copyright © 2018 MCStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celllistitems")!
        let text = data[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    //TODO:CREATE AN ARRAY OF LIST ITEMS
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0...20{
            data.append("item \(i)")
        }
        tableView.dataSource = self
    }
    private var data:[String] = []

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

