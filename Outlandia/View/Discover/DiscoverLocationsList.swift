//
//  DiscoverLocationsList.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import SwiftUI

struct DiscoverLocationsList: View {
    
    @EnvironmentObject private var vm: DiscoverLocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                    .padding(.vertical, 4)
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
        //changing format to remove weird padding
    }
}

struct DiscoverLocationsList_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverLocationsList()
            .environmentObject(DiscoverLocationsViewModel())
    }
}

extension DiscoverLocationsList {
    
    private func listRowView(location: DiscoverLocation) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                //calling first imqge in the array
                    Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
                //making the images smaller and in the same size to make image previews on the left
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            //now they are all the same width
            
        }
    }
}
