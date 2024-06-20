//
//  ViewModel.swift
//  Bonnevie
//
//  Created by Monique Mansfield on 6/12/24.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var selectedVibes: [String] = []
    @Published var vibes: [String] = ["Sweet", "Salty", "Bitter", "Spicy", "Umami"]
    
    static var shared = ViewModel()
    
    private init() {}
}

