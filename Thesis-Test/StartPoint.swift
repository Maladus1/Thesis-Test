//
//  StartPoint.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import UIKit

//Dictate which room you start from
class StartPoint: UIViewController {

    var destination: String = ""
    var startpoint: String = ""
    @IBOutlet weak var destcheck: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        destcheck.text = destination
    }
    @IBAction func entranceButton(_ sender: Any)
    {
        startpoint = "entrance"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is OtherRoom
        {
            let vc = segue.destination as? OtherRoom
            vc?.destination = destination
        }
        if segue.destination is Directions
        {
            let vc = segue.destination as? Directions
            vc?.destiny = destination
            vc?.startpoint = startpoint
        }
    }
}
