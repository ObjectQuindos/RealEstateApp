//
//  RealEStateTask.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//


import InfraLayerSDK

enum RealEstateTask {
    case list
    case detail
}

extension RealEstateTask: APITask {
    
    var path: String {
        
        switch self {
            
        case .list:
            return "list.json"
            
        case .detail:
            return "detail.json"
        }
    }
    
    var method: HTTPMethod {
        
        switch self {
        case .list, .detail:
            return .get
        }
    }
}
