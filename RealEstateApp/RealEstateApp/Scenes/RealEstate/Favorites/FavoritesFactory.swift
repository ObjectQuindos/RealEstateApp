//
//  Untitled.swift
//  RealEstateApp
//
//  Created by David López on 5/4/25.
//

protocol FavoritesFactoryType {
    func makeModule(coordinator: Coordinator, imageManager: ImageManaging) -> FavoritesViewController
}

final class FavoritesFactory: FavoritesFactoryType {
    
    func makeModule(coordinator: Coordinator, imageManager: ImageManaging) -> FavoritesViewController {
        
        let repository = FavoritesRealEstateRepository()
        let interactor = FavoritesInteractor(repository: repository)
        let presenter = FavoritesPresenter(interactor: interactor, coordinator: coordinator, imageManager: imageManager)
        
        return FavoritesViewController(presenter: presenter)
    }
}
