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
            CardView()
            BottomControlView()
        }
    }
}

struct CardView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ZStack {
                    Image("noImage")
                        .resizable()
                        .scaledToFill()
                        .background(Color.white
                        
                        )
                    
                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
                }
                .frame(width: geometry.size.width - 20, height: geometry.size.height)
                .cornerRadius(10)
                .padding(.all, 10)
                .shadow(radius: 5)
                
                VStack {
                    HStack {
                        Text("GOOD")
                            .font(.system(size: 40, weight: .heavy))
                            .foregroundColor(.green)
                            .padding(.all, 5)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.green, lineWidth: 4))
                        Spacer()
                        Text("NOPE")
                            .font(.system(size: 40, weight: .heavy))
                            .foregroundColor(.red)
                            .padding(.all, 5)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.red, lineWidth: 4))
                    }
                    .padding(.all, 30)
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Makoto")
                                .foregroundColor(.white)
                                .font(.system(size: 45, weight: .heavy))
                            Text("東京都")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium))
                            Text("プログラミング")
                                .foregroundColor(.white)
                                .font(.system(size: 25, weight: .medium))
                            Text("プロフラミング好き")
                                .foregroundColor(.white)
                                .font(.system(size: 25, weight: .medium))
                        }
                        .padding(.leading, 20)
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
                        }
                        .padding(.trailing, 50)
                    }
                    .frame(width: geometry.size.width - 20)
                    .padding(.bottom, 40)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
