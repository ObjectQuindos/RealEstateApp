//
//  RealEStateInteractor.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//


import Foundation

class RealEstateInteractor {
    
    private let service: RealEstateService
    
    init(service: RealEstateService? = nil) {
        let initService = service ?? RealEstateService(client: APIClient(configuration: APIConfiguration.shared))
        self.service = initService
    }
    
    func listRealEstate() async throws -> [RealEstate] {
        try await service.listRealEState()
    }
    
    func detailRealEstate() async throws -> RealEstateDetail {
        try await service.detailRealEState()
    }
}
