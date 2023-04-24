//
//  DiscoverLocationsViewModel.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import Foundation
import MapKit
import SwiftUI

class DiscoverLocationsViewModel: ObservableObject {
    
    //All loaded locations
    @Published var locations: [DiscoverLocation]
    
    //current location on the map
    @Published var mapLocation: DiscoverLocation {
        didSet {
            //everytime we set mapLocation, map will change automatically, instead of needing to manually update mapRegion everytime
            updateMapRegion(location: mapLocation)
        }
    }
    
    //current region on the map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    //initializing with a blank region but then after the init, we can change it from a blank region to whatever location we want
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    //this controls how big the map is on the phone
    
    //show list of locations
    @Published var showLocationsList: Bool = false
    
    //show location detail via sheet, acts like modal
    @Published var sheetLocation: DiscoverLocation? = nil
    
    init() {
        let locations = DiscoverLocations.locations
        self.locations = locations
        self.mapLocation = locations.first!
        //explicitely unwraping because I controlled the data
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: DiscoverLocation) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
            }
        }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
            //I want a nice animation everytime the list is opened
        }
    }
    
    func showNextLocation(location: DiscoverLocation) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
    //however we select a new location, the location list will close, so if its from selecting a pin or a different location from the list, it will close the list and show the new location at the top of the list
        }
    }
    
    func nextButtonPressed() {
        //calling next location in our array
        
        //get current index
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation }) else {
            print("Could not find current index in locations array.")
            return
        }
        
        //check if currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            //will happen if we get to last location in location array, and next item doesn't exist, so we want it to go back to first item, next index is not valid so restart from 0
            
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        //next Index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
