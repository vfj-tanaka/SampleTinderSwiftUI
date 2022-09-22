//
//  ContentView.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/21.
//

import SwiftUI

struct ContentView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "flame.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.red)
                })
                .frame(width: frameWidth / 4 - 20)
                .padding(.leading, 30)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .scaledToFill()
                    frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.yellow)
                })
                .frame(width: frameWidth / 4)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.left.fill")
                        .resizable()
                        .scaledToFill()
                    frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.orange)
                })
                .frame(width: frameWidth / 4)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                    frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.pink)
                })
                .frame(width: frameWidth / 4 - 20)
                .padding(.trailing, 30)
            }
            .padding()
            .frame(width: frameWidth)
            
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(Color.blue)
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth)
                .background(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
