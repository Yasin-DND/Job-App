//
//  AddJobViewController.swift
//  Second App
//
//  Created by Mac on 26/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import UIKit

class AddJobViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    
    @IBOutlet weak var descriptionLabel: UITextField!
    var arrayOfJobs : [JobClass] = []
    
    required init?(coder aDecoder: NSCoder) {
        arrayOfJobs = [JobClass]()
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func saveJobAction(_ sender: Any) {

    }
    
    

    
    
    

}
