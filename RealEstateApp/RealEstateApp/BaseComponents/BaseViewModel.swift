//
//  BaseViewModel.swift
//  RealEstateApp
//
//  Created by David López on 4/4/25.
//

import Foundation

class BaseViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var error: Error?
    var isEmptySourceData = false
}
