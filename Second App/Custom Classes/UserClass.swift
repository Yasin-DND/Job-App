//
//  UserClass.swift
//  Second App
//
//  Created by Mac on 26/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import Foundation

class UserInfo : NSObject,NSCoding{
    var name : String = ""
    var password : String = ""
    var eMail : String = ""
    override init(){
           super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "Username") as! String
        password = aDecoder.decodeObject(forKey: "Password") as! String
        eMail = aDecoder.decodeObject(forKey: "Email") as! String
        
        super.init()
    }
    
    func encode(with aCoder : NSCoder) {
        aCoder.encode(name , forKey: "Username")
        aCoder.encode(password , forKey: "Password")
        aCoder.encode(eMail , forKey: "Email")
    }
    
   
}
