//
//  RealEstate+Properties.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//

import Foundation

struct PriceInfo: Codable {
    let price: PriceDetails
}

struct PriceDetails: Codable {
    let amount: Double
    let currencySuffix: String
}

struct Multimedia: Codable {
    let images: [ImageData]
}

struct ImageData: Codable, Identifiable {
    
    let url: String
    let tag: String
    
    let localizedName: String?
    let multimediaId: Int?
    
    var id: String {
        return url
    }
}

struct ParkingSpace: Codable {
    let hasParkingSpace: Bool
    let isParkingSpaceIncludedInPrice: Bool
    
    init(hasParkingSpace: Bool = false, isParkingSpaceIncludedInPrice: Bool = false) {
        self.hasParkingSpace = hasParkingSpace
        self.isParkingSpaceIncludedInPrice = isParkingSpaceIncludedInPrice
    }
}

struct Features: Codable {
    
    private let has_air_conditioning: Bool?
    private let has_box_room: Bool?
    private let has_swimming_pool: Bool?
    private let has_terrace: Bool?
    private let has_garden: Bool?
    
    init(has_air_conditioning: Bool? = false, has_box_room: Bool? = false, has_swimming_pool: Bool? = false, has_terrace: Bool? = false, has_garden: Bool? = false) {
        self.has_air_conditioning = has_air_conditioning
        self.has_box_room = has_box_room
        self.has_swimming_pool = has_swimming_pool
        self.has_terrace = has_terrace
        self.has_garden = has_garden
    }
    
    enum CodingKeys: String, CodingKey {
        case has_air_conditioning = "hasAirConditioning"
        case has_box_room = "hasBoxRoom"
        case has_swimming_pool = "hasSwimmingPool"
        case has_terrace = "hasTerrace"
        case has_garden = "hasGarden"
    }
    
    var hasAirConditioning: Bool {
        return has_air_conditioning ?? false
    }
    
    var hasBoxRoom: Bool {
        return has_box_room ?? false
    }
    
    var hasSwimmingPool: Bool {
        return has_swimming_pool ?? false
    }
    
    var hasTerrace: Bool {
        return has_terrace ?? false
    }
    
    var hasGarden: Bool {
        return has_garden ?? false
    }
}
