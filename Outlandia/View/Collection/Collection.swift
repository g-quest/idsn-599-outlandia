//
//  Collection.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import SwiftUI

struct Collection: View {
    @EnvironmentObject var viewModel: CollectionBadgesViewModel
    
    
    var body: some View {
        NavigationStack {
            
            // Future implementation / fix:
            // Make these sections dynamic based on location
            List {
                CollectionRow(
                    locationName: "San Diego, CA",
                    badges: Array(viewModel.badges)[0...3]
                ).environmentObject(viewModel)
                CollectionRow(
                    locationName: "Los Angeles, CA",
                    badges: Array(viewModel.badges)[4...6]
                ).environmentObject(viewModel)
                CollectionRow(
                    locationName: "New York, NY",
                    badges: Array(viewModel.badges)[7...9]
                ).environmentObject(viewModel)
            }
            .listStyle(.inset)
            .navigationTitle("My Collection")
        }
    }
}

struct Collection_Previews: PreviewProvider {
    static let viewModel = CollectionBadgesViewModel()
    
    static var previews: some View {
        Collection().environmentObject(viewModel)
    }
}
