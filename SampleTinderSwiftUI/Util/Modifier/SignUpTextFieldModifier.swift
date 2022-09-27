//
//  SignUpTextFieldModifier.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/27.
//

import SwiftUI

struct SignUpTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .padding(.leading, 10)
            .textFieldStyle(PlainTextFieldStyle())
            .background(Color.white)
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(.init(white: 0.85, alpha: 1))))
    }
}
