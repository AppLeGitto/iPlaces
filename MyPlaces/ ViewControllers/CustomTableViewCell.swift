//
//  CustomTableViewCell.swift
//  MyPlaces
//
//  Created by Марк Кобяков on 07.04.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var imageOfPlace: UIImageView! {
        didSet {
            imageOfPlace.layer.cornerRadius = imageOfPlace.frame.size.height/3
            imageOfPlace.clipsToBounds = true
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var ratingControl: MainRatingController!
    
}

