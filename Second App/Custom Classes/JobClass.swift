//
//  JobClass.swift
//  Second App
//
//  Created by Mac on 30/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import Foundation
class JobClass : NSObject,NSCoding {
    var jobTitle : String = ""
    var views : Int = 0
    var jobDetails : String = ""
    var contactDetail : String = ""
    var jobType : String = ""
    
    required init?(coder aDecoder: NSCoder) {
        jobTitle = aDecoder.decodeObject(forKey: "JobTitle") as! String
        jobDetails = aDecoder.decodeObject(forKey: "JobDetails") as! String
        views = aDecoder.decodeObject(forKey: "Views") as! Int
        
        super.init()
    }
    
    func encode(with aCoder : NSCoder) {
        aCoder.encode(jobTitle , forKey: "JobTitle")
        aCoder.encode(jobDetails , forKey: "JobDetails")
        aCoder.encode(views , forKey: "Views")
    }
    
    
}
