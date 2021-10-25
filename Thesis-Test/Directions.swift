//
//  Directions.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import UIKit
import CoreMotion

//This page allows the path to be shown from vertex to vertex
class Directions: UIViewController {
    
    var steps: Int?
    var destiny: Vertex<String> = null
    let pedometer = CMPedometer()
    let activityMaager = CMMotionActivityManager()
    var svertex: Vertex<String> = null
    var text: String = ""
    @IBOutlet weak var destText: UILabel!
    var startpoint: Vertex<String> = null
    @IBOutlet weak var startText: UILabel! 
    @IBOutlet weak var Direct: UILabel!
    @IBOutlet weak var steptext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        InstantiateNorth()
        startText.text = startpoint.data
        destText.text = destiny.data
        
        if let edges = NorthHall.dijkstra(from: startpoint, to: destiny) {
            for edge in edges {
                text += ("\(edge.source) -> \(edge.destination), ")
            }
        }
        Direct.text = text
        isPedometerAvailable()
    }
    
    func isPedometerAvailable()
    {
        if InitializePedometer()
        {
            if CMPedometer.isStepCountingAvailable() {
                pedometer.startUpdates(from: Date()) { pedometerData, error in
                    guard let pedometerData = pedometerData, error == nil else { return }
                    
                    DispatchQueue.main.async {
                        self.steptext.text = "\(pedometerData.numberOfSteps.intValue)"
                    }
                }
            }
        }
    }
    
    func InitializePedometer() -> Bool
    {
        return CMPedometer.isPedometerEventTrackingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable()
    }
    func InstantiateNorth()
    {
        NorthHall.add(.undirected, from: f612, to: f6endconnect, weight: 1)
        NorthHall.add(.undirected, from: f613, to: f6endconnect, weight: 1)
        NorthHall.add(.undirected, from: f6endconnect, to: f6StairA, weight: 7)
        NorthHall.add(.undirected, from: f6StairA, to: f611, weight: 3)
        NorthHall.add(.undirected, from: f611, to: f610, weight: 4)
        NorthHall.add(.undirected, from: f610, to: f609, weight: 11)
        NorthHall.add(.undirected, from: f609, to: f608, weight: 4)
        NorthHall.add(.undirected, from: f608, to: f607, weight: 11)
        NorthHall.add(.undirected, from: f607, to: f606, weight: 4)
        NorthHall.add(.undirected, from: f606, to: f605, weight: 11)
        NorthHall.add(.undirected, from: f605, to: f6Trash, weight: 3)
        NorthHall.add(.undirected, from: f6Trash, to: f6leraconnect, weight: 6)
        NorthHall.add(.undirected, from: f6leraconnect, to: f6Lounge, weight: 3)
        NorthHall.add(.undirected, from: f6leraconnect, to: f600, weight: 5)
        NorthHall.add(.undirected, from: f6leraconnect, to: f6elevator, weight: 10)
        NorthHall.add(.undirected, from: f600, to: f602, weight: 12)
        NorthHall.add(.undirected, from: f602, to: f601, weight: 2)
        NorthHall.add(.undirected, from: f601, to: f6Laundry, weight: 12)
        NorthHall.add(.undirected, from: f6Laundry, to: f6triconnect, weight: 12)
        NorthHall.add(.undirected, from: f6triconnect, to: f603, weight: 5)
        NorthHall.add(.undirected, from: f6triconnect, to: f604, weight: 3)
        NorthHall.add(.undirected, from: f6triconnect, to: f6StairB, weight: 11)

        NorthHall.add(.undirected, from: f512, to: f5endconnect, weight: 1)
        NorthHall.add(.undirected, from: f513, to: f5endconnect, weight: 1)
        NorthHall.add(.undirected, from: f5endconnect, to: f5StairA, weight: 7)
        NorthHall.add(.undirected, from: f5StairA, to: f511, weight: 3)
        NorthHall.add(.undirected, from: f511, to: f510, weight: 4)
        NorthHall.add(.undirected, from: f510, to: f509, weight: 11)
        NorthHall.add(.undirected, from: f509, to: f508, weight: 4)
        NorthHall.add(.undirected, from: f508, to: f507, weight: 11)
        NorthHall.add(.undirected, from: f507, to: f506, weight: 4)
        NorthHall.add(.undirected, from: f506, to: f505, weight: 11)
        NorthHall.add(.undirected, from: f505, to: f5Trash, weight: 3)
        NorthHall.add(.undirected, from: f5Trash, to: f5leraconnect, weight: 6)
        NorthHall.add(.undirected, from: f5leraconnect, to: f5Lounge, weight: 3)
        NorthHall.add(.undirected, from: f5leraconnect, to: f500, weight: 5)
        NorthHall.add(.undirected, from: f5leraconnect, to: f5elevator, weight: 10)
        NorthHall.add(.undirected, from: f500, to: f502, weight: 12)
        NorthHall.add(.undirected, from: f502, to: f501, weight: 2)
        NorthHall.add(.undirected, from: f501, to: f5Laundry, weight: 12)
        NorthHall.add(.undirected, from: f5Laundry, to: f5triconnect, weight: 12)
        NorthHall.add(.undirected, from: f5triconnect, to: f503, weight: 5)
        NorthHall.add(.undirected, from: f5triconnect, to: f504, weight: 3)
        NorthHall.add(.undirected, from: f5triconnect, to: f5StairB, weight: 11)

        NorthHall.add(.undirected, from: f412, to: f4endconnect, weight: 1)
        NorthHall.add(.undirected, from: f413, to: f4endconnect, weight: 1)
        NorthHall.add(.undirected, from: f4endconnect, to: f4StairA, weight: 7)
        NorthHall.add(.undirected, from: f4StairA, to: f411, weight: 3)
        NorthHall.add(.undirected, from: f411, to: f410, weight: 4)
        NorthHall.add(.undirected, from: f410, to: f409, weight: 11)
        NorthHall.add(.undirected, from: f409, to: f408, weight: 4)
        NorthHall.add(.undirected, from: f408, to: f407, weight: 11)
        NorthHall.add(.undirected, from: f407, to: f406, weight: 4)
        NorthHall.add(.undirected, from: f406, to: f405, weight: 11)
        NorthHall.add(.undirected, from: f405, to: f4Trash, weight: 3)
        NorthHall.add(.undirected, from: f4Trash, to: f4leraconnect, weight: 6)
        NorthHall.add(.undirected, from: f4leraconnect, to: f4Lounge, weight: 3)
        NorthHall.add(.undirected, from: f4leraconnect, to: f400, weight: 5)
        NorthHall.add(.undirected, from: f4leraconnect, to: f4elevator, weight: 10)
        NorthHall.add(.undirected, from: f4Lounge, to: f4Kitchen, weight: 1)
        NorthHall.add(.undirected, from: f400, to: f402, weight: 12)
        NorthHall.add(.undirected, from: f402, to: f401, weight: 2)
        NorthHall.add(.undirected, from: f401, to: f4Laundry, weight: 12)
        NorthHall.add(.undirected, from: f4Laundry, to: f4triconnect, weight: 12)
        NorthHall.add(.undirected, from: f4triconnect, to: f403, weight: 5)
        NorthHall.add(.undirected, from: f4triconnect, to: f404, weight: 3)
        NorthHall.add(.undirected, from: f4triconnect, to: f4StairB, weight: 11)

        NorthHall.add(.undirected, from: f312, to: f3endconnect, weight: 1)
        NorthHall.add(.undirected, from: f313, to: f3endconnect, weight: 1)
        NorthHall.add(.undirected, from: f3endconnect, to: f3StairA, weight: 7)
        NorthHall.add(.undirected, from: f3StairA, to: f311, weight: 3)
        NorthHall.add(.undirected, from: f311, to: f310, weight: 4)
        NorthHall.add(.undirected, from: f310, to: f309, weight: 11)
        NorthHall.add(.undirected, from: f309, to: f308, weight: 4)
        NorthHall.add(.undirected, from: f308, to: f307, weight: 11)
        NorthHall.add(.undirected, from: f307, to: f306, weight: 4)
        NorthHall.add(.undirected, from: f306, to: f305, weight: 11)
        NorthHall.add(.undirected, from: f305, to: f3Trash, weight: 3)
        NorthHall.add(.undirected, from: f3Trash, to: f3leraconnect, weight: 6)
        NorthHall.add(.undirected, from: f3leraconnect, to: f3Lounge, weight: 3)
        NorthHall.add(.undirected, from: f3leraconnect, to: f300, weight: 5)
        NorthHall.add(.undirected, from: f3leraconnect, to: f3elevator, weight: 10)
        NorthHall.add(.undirected, from: f300, to: f302, weight: 12)
        NorthHall.add(.undirected, from: f302, to: f301, weight: 2)
        NorthHall.add(.undirected, from: f301, to: f3Laundry, weight: 12)
        NorthHall.add(.undirected, from: f3Laundry, to: f3triconnect, weight: 12)
        NorthHall.add(.undirected, from: f3triconnect, to: f303, weight: 5)
        NorthHall.add(.undirected, from: f3triconnect, to: f304, weight: 3)
        NorthHall.add(.undirected, from: f3triconnect, to: f3StairB, weight: 11)

        NorthHall.add(.undirected, from: f212, to: f2endconnect, weight: 1)
        NorthHall.add(.undirected, from: f213, to: f2endconnect, weight: 1)
        NorthHall.add(.undirected, from: f2endconnect, to: f2StairA, weight: 7)
        NorthHall.add(.undirected, from: f2StairA, to: f211, weight: 3)
        NorthHall.add(.undirected, from: f211, to: f210, weight: 4)
        NorthHall.add(.undirected, from: f210, to: f209, weight: 11)
        NorthHall.add(.undirected, from: f209, to: f208, weight: 4)
        NorthHall.add(.undirected, from: f208, to: f207, weight: 11)
        NorthHall.add(.undirected, from: f207, to: f206, weight: 4)
        NorthHall.add(.undirected, from: f206, to: f205, weight: 11)
        NorthHall.add(.undirected, from: f205, to: f2Trash, weight: 3)
        NorthHall.add(.undirected, from: f2Trash, to: f2leraconnect, weight: 6)
        NorthHall.add(.undirected, from: f2leraconnect, to: f2Lounge, weight: 3)
        NorthHall.add(.undirected, from: f2leraconnect, to: f200, weight: 5)
        NorthHall.add(.undirected, from: f2leraconnect, to: f2elevator, weight: 10)
        NorthHall.add(.undirected, from: f2Lounge, to: f2Kitchen, weight: 1)
        NorthHall.add(.undirected, from: f200, to: f202, weight: 12)
        NorthHall.add(.undirected, from: f202, to: f201, weight: 2)
        NorthHall.add(.undirected, from: f201, to: f2Laundry, weight: 12)
        NorthHall.add(.undirected, from: f2Laundry, to: f2triconnect, weight: 12)
        NorthHall.add(.undirected, from: f2triconnect, to: f203, weight: 5)
        NorthHall.add(.undirected, from: f2triconnect, to: f204, weight: 3)
        NorthHall.add(.undirected, from: f2triconnect, to: f2StairB, weight: 11)

        NorthHall.add(.undirected, from: f112, to: f1endconnect, weight: 1)
        NorthHall.add(.undirected, from: f113, to: f1endconnect, weight: 1)
        NorthHall.add(.undirected, from: f1endconnect, to: f1StairA, weight: 7)
        NorthHall.add(.undirected, from: f1StairA, to: f111, weight: 3)
        NorthHall.add(.undirected, from: f111, to: f110, weight: 4)
        NorthHall.add(.undirected, from: f110, to: f109, weight: 11)
        NorthHall.add(.undirected, from: f109, to: f108, weight: 4)
        NorthHall.add(.undirected, from: f108, to: f107, weight: 11)
        NorthHall.add(.undirected, from: f107, to: f106, weight: 4)
        NorthHall.add(.undirected, from: f106, to: f105, weight: 11)
        NorthHall.add(.undirected, from: f105, to: f1Trash, weight: 3)
        NorthHall.add(.undirected, from: f1Trash, to: f1leraconnect, weight: 6)
        NorthHall.add(.undirected, from: f1leraconnect, to: f1Lounge, weight: 3)
        NorthHall.add(.undirected, from: f1leraconnect, to: f100, weight: 5)
        NorthHall.add(.undirected, from: f1leraconnect, to: f1elevator, weight: 10)
        NorthHall.add(.undirected, from: f100, to: f102, weight: 12)
        NorthHall.add(.undirected, from: f102, to: f101, weight: 2)
        NorthHall.add(.undirected, from: f101, to: f1Laundry, weight: 12)
        NorthHall.add(.undirected, from: f1Laundry, to: f1triconnect, weight: 12)
        NorthHall.add(.undirected, from: f1triconnect, to: f103, weight: 5)
        NorthHall.add(.undirected, from: f1triconnect, to: f104, weight: 3)
        NorthHall.add(.undirected, from: f1triconnect, to: f1StairB, weight: 11)
        NorthHall.add(.undirected, from: f1Lounge, to: f1StairGround, weight: 7)

        NorthHall.add(.undirected, from: entrance, to: frontDesk, weight: 2)
        NorthHall.add(.undirected, from: frontDesk, to: mail, weight: 5)
        NorthHall.add(.undirected, from: frontDesk, to: groundconnector, weight: 3)
        NorthHall.add(.undirected, from: groundconnector, to: RHDV, weight: 3)
        NorthHall.add(.undirected, from: groundconnector, to: vending, weight: 5)
        NorthHall.add(.undirected, from: groundconnector, to: fLelevator, weight: 9)
        NorthHall.add(.undirected, from: groundconnector, to: fLStairGround, weight: 2)
        
        NorthHall.add(.undirected, from: fLStairGround, to: f1StairGround, weight: 35)
        
        NorthHall.add(.undirected, from: f1StairA, to: f2StairA, weight: 22)
        NorthHall.add(.undirected, from: f2StairA, to: f3StairA, weight: 22)
        NorthHall.add(.undirected, from: f3StairA, to: f4StairA, weight: 22)
        NorthHall.add(.undirected, from: f4StairA, to: f5StairA, weight: 22)
        NorthHall.add(.undirected, from: f5StairA, to: f6StairA, weight: 22)
        
        NorthHall.add(.undirected, from: f1StairB, to: f2StairB, weight: 22)
        NorthHall.add(.undirected, from: f2StairB, to: f3StairB, weight: 22)
        NorthHall.add(.undirected, from: f3StairB, to: f4StairB, weight: 22)
        NorthHall.add(.undirected, from: f4StairB, to: f5StairB, weight: 22)
        NorthHall.add(.undirected, from: f5StairB, to: f6StairB, weight: 22)
        
        NorthHall.add(.undirected, from: fLelevator, to: f1elevator, weight: 1000)
        NorthHall.add(.undirected, from: f1elevator, to: f2elevator, weight: 1000)
        NorthHall.add(.undirected, from: f2elevator, to: f3elevator, weight: 1000)
        NorthHall.add(.undirected, from: f3elevator, to: f4elevator, weight: 1000)
        NorthHall.add(.undirected, from: f4elevator, to: f5elevator, weight: 1000)
        NorthHall.add(.undirected, from: f5elevator, to: f6elevator, weight: 1000)
    }
}
