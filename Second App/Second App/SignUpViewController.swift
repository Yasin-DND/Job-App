//
//  SignUpViewController.swift
//  Second App
//
//  Created by Mac on 15/09/2019.
//  Copyright © 2019 DND. All rights reserved.
//

import UIKit

protocol SignupProtocol : class {
    func senduserNameandPassword(_ user : UserInfo)
}



class SignUpViewController: UIViewController {

    weak var delegate : SignupProtocol?
    
    @IBOutlet weak var userName : UITextField!
    @IBOutlet weak var eMail : UITextField!
    @IBOutlet weak var passWord : UITextField!
    @IBOutlet weak var cPassword : UITextField!
    @IBOutlet weak var label1 : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.isHidden = true
        label1.isEnabled = false

    }
    override var prefersStatusBarHidden: Bool {
        return true
    }

    
    
    @IBAction func signUpAction(){
        if userName.text!.count > 0 && passWord.text! == cPassword.text! &&  passWord.text!.count > 0 && eMail.text!.count > 0{
            let user = UserInfo()
            user.name = userName.text!
            user.password = passWord.text!
            user.eMail = eMail.text!
            delegate?.senduserNameandPassword(user)
        }else{
          label1.isEnabled = true
          label1.isHidden = false
        }
        
        //dismiss(animated: true, completion: nil)
    }
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    

}
