//
//  Profile.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import Foundation
import SwiftUI

struct Profile {
    var name: String
    var image: Image

    static let `default` = Profile(
        name: "Outlandia Team",
        image: Image("outlandia")
    )

}
