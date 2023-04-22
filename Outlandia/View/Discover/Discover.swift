//
//  Discover.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import SwiftUI
import MapKit


struct Discover: View {
    
    @EnvironmentObject private var vm: DiscoverLocationsViewModel
        
    var body: some View {
        ZStack {
            mapLayer
            VStack (spacing:0) {
                header
                    .padding()
                Spacer()
                locationsPreviewStack
                
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in DiscoverLocationDetail(location: location)
            
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static let viewModel = DiscoverLocationsViewModel()
    
    static var previews: some View {
        Discover().environmentObject(viewModel)
    }
}

extension Discover {
    
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationsList) {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.subheadline)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 20)
                    .padding()
                    .animation(.none, value: vm.mapLocation)
                    //how tall the box is
                    .frame(maxWidth: .infinity)
                    .overlay(alignment: .trailing) {
                        Image (systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                    }
            }
            
            if vm.showLocationsList {
                DiscoverLocationsList()
            }
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x:0, y: 15)
    }
    
    private var mapLayer: some View {
        //want to add a map to the background from Mapkit
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation (coordinate: location.coordinates) {
                DiscoverLocationMapAnnotation()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
                
            }
        })
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    DiscoverLocationPreview(location:location)
                        .shadow(color:Color.black.opacity(0.3), radius:20)
                        .padding()
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
            }
        }
    }
    
}

