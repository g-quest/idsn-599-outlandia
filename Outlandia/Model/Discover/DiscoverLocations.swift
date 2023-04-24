//
//  DiscoverLocations.swift
//  Outlandia
//
//  Created by Jasmine Lee on 4/20/23.
//

import Foundation
import MapKit

class DiscoverLocations {
    
    static let locations: [DiscoverLocation] = [
        DiscoverLocation(
            name: "Natural History Museum",
            cityName: "San Diego",
            coordinates: CLLocationCoordinate2D(latitude: 32.732889, longitude: -117.147062),
            description: "The San Diego Natural History Museum is a fascinating destination for nature lovers and history buffs alike. Located in the heart of beautiful Balboa Park, this museum features an extensive collection of exhibits that explore the natural world and the history of the San Diego region.",
            imageNames: [
                "sd-museum-1",
                "sd-museum-2",
                "sd-museum-3",
            ],
            badgeNames: [
                "badge-museum-1",
            ],
            link: "https://www.sdnat.org/"),
        
        DiscoverLocation(
            name: "Balboa Park",
            cityName: "San Diego",
            coordinates: CLLocationCoordinate2D(latitude: 32.7319, longitude: -117.1546),
            description: "Balboa Park is a stunning urban oasis located in the heart of San Diego. Known for its lush gardens, stunning architecture, and rich cultural heritage, this 1,200-acre park is a must-visit destination for locals and tourists alike. Visitors can take a leisurely stroll through the Japanese Friendship Garden, marvel at the stunning architecture of the Botanical Building, or simply relax and soak up the sun on one of the park's many grassy lawns.",
            imageNames: [
                "sd-balboapark-1",
                "sd-balboapark-2",
                "sd-balboapark-3",
            ],
            badgeNames: [
                "badge-balboapark-1",
            ],
            link: "https://www.sandiego.org/articles/balboa-park/balboa-park-san-diego.aspx?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfbtpsfbh-BDjSz32akaBrMt8GY-vs7gEpZnGBD6G5mYajgbb-I92t4aAjt7EALw_wcB"),
        
        DiscoverLocation(
            name: "San Diego Zoo",
            cityName: "San Diego",
            coordinates: CLLocationCoordinate2D(latitude: 32.7353, longitude: -117.1490),
            description: "The San Diego Zoo is a world-renowned wildlife park located in Balboa Park. Home to over 3,700 animals from over 650 species and subspecies, the zoo offers visitors the opportunity to observe exotic animals in a lush and natural setting. With exhibits ranging from the African Plains to the Australian Outback, the San Diego Zoo is a must-visit destination for animal lovers of all ages.",
            imageNames: [
                "sd-zoo-3",
                "sd-zoo-1",
                "sd-zoo-2",
            ],
            badgeNames: [
                "badge-zoo-1",
            ],
            link: "https://zoo.sandiegozoo.org/tickets?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfaoPmwA4y9Rd5-azda9ravT5fbKkUZrzR6J6xz13jtEj1p78z79aKgaAqEvEALw_wcB"),
        
        DiscoverLocation(
            name: "Gaslamp Quarter",
            cityName: "San Diego",
            coordinates: CLLocationCoordinate2D(latitude: 32.7102, longitude: -117.1601),
            description: "The Gaslamp Quarter is a lively and historic neighborhood in downtown San Diego. With its Victorian architecture, trendy restaurants, and nightlife scene, it's a popular destination for locals and tourists alike. Visitors can explore the neighborhood's many shops, galleries, and museums during the day, and experience the vibrant atmosphere of the Gaslamp Quarter after dark.",
            imageNames: [
                "sd-gaslamp-1",
                "sd-gaslamp-2",
                "sd-gaslamp-3",
            ],
            badgeNames: [
                "badge-gaslamp-1",
            ],
            link: "https://www.sandiego.org/explore/downtown-urban/downtown.aspx?gclid=Cj0KCQjwxYOiBhC9ARIsANiEIfZyu0q2zbSA2YKZD_U2064Uxk5Y0DzmknFez5mgrJ3SC-rkC-mqpBUaApLMEALw_wcB"),
    ]
}
