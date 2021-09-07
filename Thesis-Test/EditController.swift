//
//  EditController.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/23/21.
//

import UIKit

//Allows you to edit information and add information to be stored for later use

class EditController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var DormTF: UITextField!
    @IBOutlet weak var DormRoomTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NameTF.delegate = self
        DormTF.delegate = self
        DormRoomTF.delegate = self
        if(UserDefaults.standard.object(forKey: "namey") as? String != nil)
        {
            NameTF.text = UserDefaults.standard.object(forKey: "namey") as? String
        }
        if(UserDefaults.standard.object(forKey: "Dorm") as? String != nil)
        {
            DormTF.text = UserDefaults.standard.object(forKey: "Dorm") as? String
        }
        if (UserDefaults.standard.object(forKey: "DormRoom") as? String != nil)
        {
            DormRoomTF.text = UserDefaults.standard.object(forKey: "DormRoom") as? String
        }
    }
    
    @IBAction func save(_ sender: Any)
    {
        UserDefaults.standard.set(NameTF.text, forKey: "namey")
        UserDefaults.standard.set(DormTF.text, forKey: "Dorm")
        UserDefaults.standard.set(DormRoomTF.text, forKey: "DormRoom")
    }
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}
