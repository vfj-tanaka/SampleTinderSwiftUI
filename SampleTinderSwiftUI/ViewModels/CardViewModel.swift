//
//  CardViewModel.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/26.
//

import SwiftUI

class CardViewModel: ObservableObject {
    
    @Published var translation: CGSize = .zero
    @Published var numbers = [0, 1, 2, 3, 4, 5]
    @Published var goodOpacity: Double = 0
    @Published var nopeOpacity: Double = 0
    
    init() {
        
    }
}
