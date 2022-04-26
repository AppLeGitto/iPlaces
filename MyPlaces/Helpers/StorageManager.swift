//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Марк Кобяков on 08.04.2022.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObjects( _ Place: Place) {
        try! realm.write {
            realm.delete(Place)
        }
    }
}

