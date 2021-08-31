//
//  Directions.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import UIKit

class Directions: UIViewController {

    var destiny: String = ""
    var svertex: Vertex<String> = null
    @IBOutlet weak var destText: UILabel!
    var startpoint: String = ""
    @IBOutlet weak var startText: UILabel!
    @IBOutlet weak var Direct: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        destText.text = destiny
        startText.text = startpoint
        svertex = FindStartVertex(start: startpoint, vertex: entrance)
        ClearGraph(start: svertex)
        Direct.text = Pathfinder(start: svertex, end: destiny)
        ClearGraph(start: svertex)
    }
}
