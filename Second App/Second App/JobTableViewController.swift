//
//  JobTableViewController.swift
//  Second App
//
//  Created by Mac on 28/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import UIKit

class JobTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JobView", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = "Hello World"
        // Configure the cell...
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 150.0
    }
    
    
    
    func documentsDirectory()-> URL{
           let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
           return paths[0]
    }
    func dataFilePath()->URL{
           return documentsDirectory().appendingPathComponent("Userinfo.plist")
    }
    func loadJobs(){
        
    }
    
    
    
}
