//
//  Image+.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/26.
//

import SwiftUI

extension Image {
    
    func asTopControlButtonImage() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30, alignment: .center)
    }
}
