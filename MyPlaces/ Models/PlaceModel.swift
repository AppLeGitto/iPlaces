//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Марк Кобяков on 07.04.2022.
//
import RealmSwift

class Place: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    @objc dynamic var date = Date()
    @objc dynamic var rating = 0.0
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?, rating: Double) {
        self.init()
        self.name = name
        self.type = type
        self.location = location
        self.imageData = imageData
        self.rating = rating
    }
}
