//
//  Selector.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import UIKit

//Allows you to select which room you want to end with
class Selector: UIViewController {

    var identifier = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func RHD(_ sender: Any)
    {
        identifier = "RHD"
    }
    @IBAction func Vending(_ sender: Any)
    {
        identifier = "vending"
    }
    @IBAction func Trash(_ sender: Any)
    {
        identifier = "Trash"
    }
    @IBAction func Lounge(_ sender: Any)
    {
        identifier = "Lounge"
    }
    @IBAction func Mailbox(_ sender: Any)
    {
        identifier = "mailbox"
    }
    @IBAction func Kitchen(_ sender: Any)
    {
        identifier = "Kitchen"
    }
    @IBAction func Laundry(_ sender: Any)
    {
        identifier = "Laundry"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is StartPoint
        {
            let vc = segue.destination as? StartPoint
            vc?.destination = identifier
        }
    }
}
