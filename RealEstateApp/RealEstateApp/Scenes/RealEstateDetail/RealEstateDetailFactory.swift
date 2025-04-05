//
//  Untitled.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//

import Foundation

protocol RealEstateDetailFactoryType {
    func makeModule(coordinator: Coordinator, imageManager: ImageManaging) -> RealEstateDetailView
}

final class RealEstateDetailFactory: RealEstateDetailFactoryType {
    
    func makeModule(coordinator: Coordinator, imageManager: ImageManaging) -> RealEstateDetailView {
        
        let interactor = RealEstateInteractor()
        let viewModel = RealEstateDetailViewModel(interactor: interactor, coordinator: coordinator)
        
        return RealEstateDetailView(viewModel: viewModel)
    }
}
