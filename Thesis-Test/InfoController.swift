//
//  InfoController.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/23/21.
//

import UIKit

//Shows stored information that is saved from the Edit Controller, information is saved even when you leave application

class InfoController: UIViewController
{
    @IBOutlet weak var Dorm: UILabel!
    @IBOutlet weak var Name: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if (UserDefaults.standard.object(forKey: "namey") as? String != nil)
        {
            Name.text =  UserDefaults.standard.object(forKey: "namey") as? String
        }
        if (UserDefaults.standard.object(forKey: "Dorm") as? String != nil && UserDefaults.standard.object(forKey: "DormRoom") as? String != nil)
        {
            Dorm.text = "\(UserDefaults.standard.object(forKey: "Dorm") as? String ?? "")" + " " + "\(UserDefaults.standard.object(forKey: "DormRoom") as? String ?? "")"
        }
    }
}
