//
//  View+.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/26.
//

import SwiftUI

extension View {
    
    func asRoundShadow(size: CGFloat) -> some View {
        modifier(BottomButtonModifier(size: size))
    }
    
    func asSignUpTextField() -> some View {
        modifier(SignUpTextFieldModifier())
    }
}
