//
//  HomeView.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/21.
//

import SwiftUI

struct HomeView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        VStack {
            
            TopControlView()
            
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(Color.blue)
            
            BottomControlView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
