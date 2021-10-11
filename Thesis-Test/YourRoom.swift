//
//  YourRoom.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import UIKit

//Checks to see if the room you put in for your room is valid or not. If it is not, you need to change. If it is, you can continue

class YourRoom: UIViewController {

    @IBOutlet weak var valid: UILabel!
    @IBOutlet weak var Continue: UIButton!
    let firstfloor = ["100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113"]
    let secondfloor = ["200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213"]
    let thirdfloor = ["300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313"]
    let fourthfloor = ["400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413"]
    let fifthfloor = ["500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513"]
    let sixthfloor = ["600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613"]
    let roomnumber = UserDefaults.standard.object(forKey: "DormRoom") as? String
    override func viewDidLoad() {
        super.viewDidLoad()
        if(UserDefaults.standard.object(forKey: "Dorm") as? String == "North")
        {
            if(checkNumber() == true)
            {
                Continue.isHidden = false
                valid.text = "Valid"
                valid.textColor = .green
            }
            else
            {
                Continue.isHidden = false
                valid.text = "Invalid"
                valid.textColor = .red
            }
        }
        else
        {
            Continue.isHidden = true
            valid.text = "Invalid"
            valid.textColor = .red
        }
    }
    
    func checkNumber() -> Bool
    {
        for item in firstfloor
        {
            if(UserDefaults.standard.object(forKey: "DormRoom") as? String == item)
            {
                return true
            }
        }
        for item in secondfloor
        {
            if(UserDefaults.standard.object(forKey: "DormRoom") as? String == item)
            {
                return true
            }
        }

        for item in thirdfloor
        {
            if(UserDefaults.standard.object(forKey: "DormRoom") as? String == item)
            {
                return true
            }
        }

        for item in fourthfloor
        {
            if(UserDefaults.standard.object(forKey: "DormRoom") as? String == item)
            {
                return true
            }
        }

        for item in fifthfloor
        {
            if(UserDefaults.standard.object(forKey: "DormRoom") as? String == item)
            {
                return true
            }
        }

        for item in sixthfloor
        {
            if(UserDefaults.standard.object(forKey: "DormRoom") as? String == item)
            {
                return true
            }
        }
        return false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is StartPoint
        {
            let vc = segue.destination as? StartPoint
            //vc?.destination = roomnumber ?? null
        }
    }
}
