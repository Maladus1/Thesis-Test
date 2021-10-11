//
//  CustomTableViewCell.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 9/27/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellText: UILabel!
    var vertecies: Vertex<String> = null
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
