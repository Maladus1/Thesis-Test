//
//  OtherRoom.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import UIKit

//Allows you to select roon and transfer information
class OtherRoom: UIViewController, UITableViewDelegate
{
    var destination: Vertex<String> = null
    var rooms = ["100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613"]
    
    var vecrooms = [f100, f101, f102, f103, f104, f105, f106, f107, f108, f109, f110, f111, f112, f113, f200, f201, f202, f203, f204, f205, f206, f207, f208, f209, f210, f211, f212, f213, f300, f301, f302, f303, f304, f305, f306, f307, f308, f309, f310, f311, f312, f313, f400, f401, f402, f403, f404, f405, f406, f407, f408, f409, f410, f411, f412, f413, f500, f501, f502, f503, f504, f505, f506, f507, f508, f509, f510, f511, f512, f513, f600, f601, f602, f603, f604, f605, f606, f607, f608, f609, f610, f611, f612, f613]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension OtherRoom: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int
    {
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = rooms[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if let vcs = storyboard?.instantiateViewController(identifier: "Direction") as? Directions
        {
            vcs.startpoint = vecrooms[indexPath.row]
            vcs.destiny = destination
            self.navigationController?.pushViewController(vcs, animated: true)
        }
    }
}
