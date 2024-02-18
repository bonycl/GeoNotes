//
//  PlaceModel.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 17.02.2024.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
   static let spotsName = ["Garage", "House", "Bar", "Gym", "Shop", "Burger House"]

    static func getPalces() -> [Place] {
        
        var places = [Place]()
        for place in spotsName {
            places.append(Place(name: place, location: "Rome", type: "rest", image: "Car"))
        }
        return places
    }
    
}
