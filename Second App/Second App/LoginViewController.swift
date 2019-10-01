//
//  LoginViewController.swift
//  Second App
//
//  Created by Mac on 15/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, SignupProtocol {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var userError : UILabel!
    @IBOutlet weak var passError : UILabel!

    
    
    var userArray : [UserInfo]
    
    required init?(coder aDecoder: NSCoder) {
        userArray = [UserInfo]()
        super.init(coder: aDecoder)
        loadUserInfo()
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
        print(dataFilePath())
    }
    override func viewWillAppear(_ animated: Bool) {
        reset()
        saveUserInfo()
    }
    override func viewDidAppear(_ animated: Bool) {
        reset()
        saveUserInfo()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "loginTosignup"{
            let controller = segue.destination as! SignUpViewController
            
            controller.delegate = self
        }
    }
 
   @IBAction func loginAction() {
        for user in userArray{
            if user.name == userName.text! && userName.text!.count > 0{
                if  user.password == passWord!.text{
                    print("Login")
                    reset()
                    performSegue(withIdentifier: "Dashboard", sender: self)
                }else{
                    passError.isEnabled = true
                    passError.isHidden = false
                    userError.isHidden = false
                    userError.isEnabled = true
                }
            }else{
                passError.isEnabled = true
                passError.isHidden = false
                userError.isHidden = false
                userError.isEnabled = true
            }
        }
    }
    
   
    func reset(){
        passError.isEnabled = false
        passError.isHidden = true
        userError.isEnabled = false
        userError.isHidden = true
        userName.text = ""
        userName.placeholder = "Username"
        passWord.text = ""
        passWord.placeholder = "Password"
    }
    func senduserNameandPassword(_ user : UserInfo){
        let count = userArray.count
        userArray.append(user)
        saveUserInfo()
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    func documentsDirectory()-> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    func dataFilePath()->URL{
        return documentsDirectory().appendingPathComponent("Userinfo.plist")
    }
    func saveUserInfo(){
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.encode(userArray ,forKey : "Userfile")
        archiver.finishEncoding()
        data.write(to: dataFilePath(), atomically: true)
    }
    func loadUserInfo(){
        print("Loading Started")
        let path = dataFilePath()
        if let user = try? Data(contentsOf: path){
            let unarchiver = NSKeyedUnarchiver(forReadingWith: user)
            print(unarchiver)
            userArray = unarchiver.decodeObject(forKey: "Userfile") as! [UserInfo]
            unarchiver.finishDecoding()
        }
        
        
    }

}
