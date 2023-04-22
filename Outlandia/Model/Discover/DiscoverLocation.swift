//
//  DiscoverLocation.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import Foundation
import MapKit

struct DiscoverLocation: Identifiable, Equatable {
    
    //if there are two locations in our code, how can we set it the locations as the same or differnt
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let badgeNames: [String]
    let link: String
    
    //identifiable
    var id: String {
        name + cityName
    }
    
    //Equatable
    static func == (lhs: DiscoverLocation, rhs: DiscoverLocation) -> Bool {
        //check if they have the same id
        lhs.id == rhs.id
    }
}

// each location has a name, city, coordinates for map, description, images and an external link
