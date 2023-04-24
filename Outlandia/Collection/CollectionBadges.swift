//
//  CollectionBadges.swift
//  Outlandia
//
//  Created by Yuning Tang on 4/20/23.
//

import Foundation
import SwiftUI

struct CollectionBadges {
    var badges: [CollectionBadge] = [
        CollectionBadge(
            name: "Natural History Museum",
            location: "San Diego, CA",
            badgeImage: Image("badge-museum-1"),
            description: "The San Diego Natural History Museum is a fascinating destination for nature lovers and history buffs alike. Located in the heart of beautiful Balboa Park, this museum features an extensive collection of exhibits that explore the natural world and the history of the San Diego region.",
            locationImages: [
                "sd-museum-1",
                "sd-museum-2",
                "sd-museum-3",
            ]
        ),
        CollectionBadge(
            name: "Gaslamp",
            location: "San Diego, CA",
            badgeImage: Image("badge-gaslamp-1"),
            description: "The Gaslamp Quarter is a lively and historic neighborhood in downtown San Diego. With its Victorian architecture, trendy restaurants, and nightlife scene, it's a popular destination for locals and tourists alike. Visitors can explore the neighborhood's many shops, galleries, and museums during the day, and experience the vibrant atmosphere of the Gaslamp Quarter after dark.",
            locationImages: [
                "sd-gaslamp-1",
                "sd-gaslamp-2",
                "sd-gaslamp-3",
            ]
        ),
        CollectionBadge(
            name: "San Diego Zoo",
            location: "San Diego, CA",
            badgeImage: Image("badge-zoo-1"),
            description: "The San Diego Zoo is a world-renowned wildlife park located in Balboa Park. Home to over 3,700 animals from over 650 species and subspecies, the zoo offers visitors the opportunity to observe exotic animals in a lush and natural setting. With exhibits ranging from the African Plains to the Australian Outback, the San Diego Zoo is a must-visit destination for animal lovers of all ages.",
            locationImages: [
                "sd-zoo-1",
                "sd-zoo-2",
                "sd-zoo-3",
            ]
        ),
        CollectionBadge(
            name: "Balboa Park",
            location: "San Diego, CA",
            badgeImage: Image("badge-balboapark-1"),
            description: "Balboa Park is a stunning urban oasis located in the heart of San Diego. Known for its lush gardens, stunning architecture, and rich cultural heritage, this 1,200-acre park is a must-visit destination for locals and tourists alike. Visitors can take a leisurely stroll through the Japanese Friendship Garden, marvel at the stunning architecture of the Botanical Building, or simply relax and soak up the sun on one of the park's many grassy lawns.",
            locationImages: [
                "sd-balboapark-1",
                "sd-balboapark-2",
                "sd-balboapark-3",
            ]
        ),
        CollectionBadge(
            name: "LACMA Urban Light",
            location: "Los Angeles, CA",
            badgeImage: Image("badge-lacma-1"),
            description: "Urban Light is a large-scale assemblage sculpture by Chris Burden located at the Wilshire Boulevard entrance to the Los Angeles County Museum of Art. The 2008 installation consists of restored street lamps from the 1920s and 1930s. Most of them once lit the streets of Southern California.",
            locationImages: [
                "la-lacma-1",
                "la-lacma-2",
                "la-lacma-3",
            ]
        ),
        CollectionBadge(
            name: "Hollywood Sign",
            location: "Los Angeles, CA",
            badgeImage: Image("badge-hollywood-1"),
            description: "The Hollywood Sign, is an American landmark and cultural icon overlooking Hollywood, Los Angeles, California. Originally the Hollywoodland Sign, it is situated on Mount Lee, in the Beachwood Canyon area of the Santa Monica Mountains.",
            locationImages: [
                "la-hollywood-1",
                "la-hollywood-2",
                "la-hollywood-3",
            ]
        ),
        CollectionBadge(
            name: "Santa Monica Pier",
            location: "Los Angeles, CA",
            badgeImage: Image("badge-sm-1"),
            description: "The Santa Monica Pier is a large double-jointed pier at the foot of Colorado Avenue in Santa Monica, California, United States. It contains a small amusement park, concession stands, and areas for views and fishing. The pier is part of the greater Santa Monica Mountains National Recreation Area.",
            locationImages: [
                "la-santamonica-1",
                "la-santamonica-2",
                "la-santamonica-3",
            ]
        ),
        CollectionBadge(
            name: "Statue of Liberty",
            location: "New York, NY",
            badgeImage: Image("badge-liberty-1"),
            description: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France, was designed by French sculptor Frédéric Auguste Bartholdi and its metal framework was built by Gustave Eiffel. The statue was dedicated on October 28, 1886.",
            locationImages: [
                "ny-liberty-1",
                "ny-liberty-2",
                "ny-liberty-3",
            ]
        ),
        CollectionBadge(
            name: "Empire State Building",
            location: "New York, NY",
            badgeImage: Image("badge-empire-1"),
            description: "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan, New York City. The building was designed by Shreve, Lamb & Harmon and built from 1930 to 1931. Its name is derived from 'Empire State', the nickname of the state of New York.",
            locationImages: [
                "ny-empire-1",
                "ny-empire-2",
                "ny-empire-3",
            ]
        ),
        CollectionBadge(
            name: "Brooklyn Bridge",
            location: "New York, NY",
            badgeImage: Image("badge-brooklyn-1"),
            description: "The Brooklyn Bridge is a hybrid cable-stayed/suspension bridge in New York City, spanning the East River between the boroughs of Manhattan and Brooklyn. Opened on May 24, 1883, the Brooklyn Bridge was the first fixed crossing of the East River.",
            locationImages: [
                "ny-brooklyn-1",
                "ny-brooklyn-2",
                "ny-brooklyn-3",
            ]
        ),
    ]
    
    var categories: [String: [CollectionBadge]] {
        Dictionary(grouping: badges, by: { $0.location })
    }
    
    mutating func add(badge: CollectionBadge) {
        badges.insert(badge, at: 0)
    }

}
