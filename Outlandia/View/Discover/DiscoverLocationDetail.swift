//
//  DiscoverLocationDetail.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import SwiftUI
import MapKit

struct DiscoverLocationDetail: View {
    
    @EnvironmentObject private var vm: DiscoverLocationsViewModel
    let location: DiscoverLocation
    
    var body: some View {
        ScrollView {
            VStack {
                imageSelection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y:10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    badgeCollectionSection
                    Divider()

                    //want to add one more map on the detail page
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        //has image reach all the way to the top
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

struct DiscoverLocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverLocationDetail(location: DiscoverLocations.locations.first!)
            .environmentObject(DiscoverLocationsViewModel())
    }
}

extension DiscoverLocationDetail {
    
    private var imageSelection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.title)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Learn More On Our Website", destination: url)
                    .font(.headline)
                    .tint(.blue)
                
            }
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                DiscoverLocationMapAnnotation()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
        //makes the map undraggable
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

    }
    
    private var badgeCollectionSection: some View {
        VStack (alignment: .leading){
            Text("Badge Collection")
                .font(.title3)
                .fontWeight(.semibold)
            
            HStack {
                if let imageName = location.badgeNames.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(10)
                        
                }
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .foregroundStyle(
                        .secondary.shadow(
                            .inner(color: .gray, radius: 10)
                            )
                        )
                
                Rectangle()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .foregroundStyle(
                        .secondary.shadow(
                            .inner(color: .gray, radius: 10)
                            )
                        )
                    .padding(10)
                
            }
        }
    }
    
}

