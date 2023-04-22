//
//  DiscoverLocationPreview.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import SwiftUI

struct DiscoverLocationPreview: View {
    
    @EnvironmentObject private var vm: DiscoverLocationsViewModel
    let location: DiscoverLocation
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(alignment: .center, spacing: 20) {
                imageSection
                titleSection
            }
        
            HStack(spacing: 10) {
                nextButton
                learnMoreButton
            }
        }
        .padding(.horizontal, 25)
        .padding(.vertical, 15)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
        )
        .cornerRadius(10)
    }
}

struct DiscoverLocationPreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            DiscoverLocationPreview(location: DiscoverLocations.locations.first!)
                .padding()
        }
        .environmentObject(DiscoverLocationsViewModel())
    }
}
extension DiscoverLocationPreview {
       
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    
            }
        }
        //adding a border
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
        
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    private var learnMoreButton: some View {
        Button {
            vm.sheetLocation = location
            //set it equal to location of preview
        } label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
    }
}
