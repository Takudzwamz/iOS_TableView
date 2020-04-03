//
//  CountriesTableViewController.swift
//  Countries
//
//  Created by Takudzwa Mupanesure on 15/03/2020.
//  Copyright © 2020 Takudzwa Mupanesure. All rights reserved.
//

import Foundation

struct CountryModel {
    static var country = [
        "Africa" : ["Zimbabwe","South Africa","Kenya"],
        "America" : ["USA","Canada"],
        "Oceania" : ["Australia", "New Zealand", "Fiji", "Tonga"],
        "Asia" : ["Republic of Korea","China","Taiwan","Vietnam"],
        "Europe" : ["Russia","UK","France","Sweden"]
    ]
    
    static var categories: [String] { return Array(country.keys) }
    static var all: [String] { return country.flatMap { $0.value } }
    
    static let emoji = [
        "Zimbabwe" : "🇿🇼",
        "South Africa" : "🇿🇦",
        "Kenya" : "🇰🇪",
        "USA" : "🇺🇸",
        "Canada" : "🇨🇦",
        "Australia" : "🇦🇺",
        "New Zealand" : "🇳🇿",
        "Fiji" : "🇫🇯",
        "Tonga" : "🇹🇴",
        "Republic of Korea" : "🇰🇷",
        "China" : "🇨🇳",
        "Taiwan" : "🇹🇼",
        "Vietnam" : "🇻🇳",
        "Russia" : "🇷🇺",
        "UK" : "🇬🇧",
        "France" : "🇫🇷",
        "Sweden" : "🇸🇪"
    ]
    
    static let descriptions = [
        "Zimbabwe" : "Zimbabwe is a landlocked country in southern Africa known for its dramatic landscape and diverse wildlife, much of it within parks, reserves and safari areas.",
        "South Africa" : "South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game.",
        "Kenya" : "Kenya is a country in East Africa with coastline on the Indian Ocean.",
        "Australia" : "Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands.",
        "New Zealand" : "New Zealand is a sovereign island country in the southwestern Pacific Ocean.",
        "Russia": "Russia, or the Russian Federation, is a transcontinental country located in Eastern Europe and Northern Asia. ",
        "USA": "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. ",
        "China": "Corona Virus. "
    ]
    
    static func category(of countryName: String) -> String {
        for category in Array(CountryModel.country.keys) {
            if CountryModel.country[category]?.contains(countryName) ?? false {
                return category
            }
        }
        return ""
    }
    
    static func delete(_ countryName: String) {
        for category in categories {
            if let index = country[category]?.firstIndex(of: countryName) {
                country[category]?.remove(at: index)
            }
        }
    }
}
