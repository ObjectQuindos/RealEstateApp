//
//  RealEstateDetail+Domain.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//

import Foundation

extension RealEstateDetail {
    
    func formatPrice() -> String {
        
        return PropertyFormatters.formatPrice(
            price: price,
            currencySuffix: priceInfo.currencySuffix
        )
    }
    
    func getOperationLabel() -> String {
        return PropertyFormatters.operationLabel(operation: operation)
    }
    
    func formatSize() -> String {
        return PropertyFormatters.sizeFormat(size: Double(moreCharacteristics.constructedArea))
    }
    
    func formatRoomsBathrooms() -> String {
        let rooms = moreCharacteristics.roomNumber
        let baths = moreCharacteristics.bathNumber
        
        return PropertyFormatters.flatInfoDescrition(rooms: rooms, bathrooms: baths)
    }
    
    func getFloorText() -> String {
        return PropertyFormatters.floorDescription(floor: moreCharacteristics.floor, localized: true)
    }
    
    func formatRooms() -> String {
        PropertyFormatters.format(rooms: moreCharacteristics.roomNumber)
    }
    
    func formatBathrooms() -> String {
        PropertyFormatters.format(bathrooms: moreCharacteristics.bathNumber)
    }
    
    func getExtras() -> [String] {
        var extras: [String] = []
        
        if moreCharacteristics.lift {
            extras.append(LocalizationKeys.lift.localized)
        }
        
        if moreCharacteristics.boxroom {
            extras.append(LocalizationKeys.storage_room.localized)
        }
        
        if moreCharacteristics.exterior {
            extras.append(LocalizationKeys.outer.localized)
            
        } else {
            extras.append(LocalizationKeys.inner.localized)
        }
        
        if moreCharacteristics.isDuplex {
            extras.append(LocalizationKeys.duplex.localized)
        }
        
        return extras
    }
    
    func getFormattedCommunityFees() -> String {
        return PropertyFormatters.communityFees(
            cost: moreCharacteristics.communityCosts,
            currency: priceInfo.currencySuffix
        )
    }
    
    func getPropertyTypeText() -> String {
        
        switch propertyType {
            
        case "homes":
            return homeType == "flat" ? LocalizationKeys.flat.localized : LocalizationKeys.home.localized
            
        default:
            return propertyType.capitalized
        }
    }
}
