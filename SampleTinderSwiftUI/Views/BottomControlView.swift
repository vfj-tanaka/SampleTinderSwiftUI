//
//  BottomControlView.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/26.
//

import SwiftUI

struct BottomControlView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        HStack(spacing: 20) {
            
            BottomButtonView(imageName: "noImage", imageSize: 20, backgroundSize: 50)
            BottomButtonView(imageName: "noImage", imageSize: 25, backgroundSize: 60)
            BottomButtonView(imageName: "noImage", imageSize: 20, backgroundSize: 50)
            BottomButtonView(imageName: "noImage", imageSize: 25, backgroundSize: 60)
            BottomButtonView(imageName: "noImage", imageSize: 20, backgroundSize: 50)
        }
        .padding()
        .frame(width: frameWidth)
    }
}

struct BottomButtonView: View {
    
    var imageName: String
    var imageSize: CGFloat
    var backgroundSize: CGFloat
    
    var body: some View {
        ZStack {
            Color.white
                .asRoundShadow(size: backgroundSize)
            Button {
                
            } label: {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize, height: imageSize, alignment: .center)
            }
        }
    }
}
