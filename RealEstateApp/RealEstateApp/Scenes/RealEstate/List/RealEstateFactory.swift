//
//  RealEstateFactoryType.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//


import UIKit

protocol RealEstateFactoryType {
    func makeModule(coordinator: Coordinator, imageManager: ImageManaging) -> RealEstateViewController
}

final class RealEstateFactory: RealEstateFactoryType {
    
    func makeModule(coordinator: Coordinator, imageManager: ImageManaging) -> RealEstateViewController {
        
        let interactor = RealEstateInteractor()
        let repository = FavoritesRealEstateRepository()
        let favoritesInteractor = FavoritesInteractor(repository: repository)
        let presenter = RealEstateListPresenter(interactor: interactor, favoritesInteractor: favoritesInteractor, coordinator: coordinator, imageManager: imageManager)
        
        return RealEstateViewController(presenter: presenter)
    }
}
