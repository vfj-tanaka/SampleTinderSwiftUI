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
    
    @EnvironmentObject var vm: CardViewModel
    
    var body: some View {
        GeometryReader { geometry in
            
            ForEach(vm.numbers, id: \.self) { number in
                CardDetailView(number: number, geometry: geometry)
                    .offset(vm.numbers.last == number ? vm.translation : .zero)
                .rotationEffect(vm.numbers.last == number ? .degrees(Double(vm.translation.width / 300 * 20)) : .zero)
                .gesture(
                DragGesture()
                    .onChanged({ value in
                        self.dragOnChanged(value: value)
                    })
                    .onEnded({ value in
                        self.dragOnEnded(value: value)
                    })
                )
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 1))
            }
        }
    }
    // CardViewをドラッグ中
    private func dragOnChanged(value: DragGesture.Value) {
        vm.translation = value.translation
        let diffValue = value.startLocation.x - value.location.x
        let ratio:CGFloat = 1 / 150
        let opacity = diffValue * ratio
        
        if value.location.x < value.startLocation.x {
            vm.nopeOpacity = Double(opacity)
            vm.goodOpacity = .zero
        } else if value.location.x > value.startLocation.x {
            vm.goodOpacity = Double(-opacity)
            vm.nopeOpacity = .zero
        }
    }
    // CardViewのドラッグが終了
    private func dragOnEnded(value: DragGesture.Value) {
        
        vm.goodOpacity = .zero
        vm.nopeOpacity = .zero
        
        if value.startLocation.x - 150 > value.location.x {
            // 左に
            vm.translation = .init(
                width: -800, height: 0)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                vm.numbers.removeLast()
                vm.translation = .zero
            }
        } else if value.startLocation.x + 150 < value.location.x {
            // 右に
            vm.translation = .init(width: 800, height: 0)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                vm.numbers.removeLast()
                vm.translation = .zero
            }
        } else {
            // 元に
            vm.translation = .zero
        }
    }
}

struct CardDetailView: View {
    
    var number: Int
    var geometry: GeometryProxy
    @EnvironmentObject var vm: CardViewModel
    
    var body: some View {
        ZStack {
            ZStack {
                Image("noImage")
                    .resizable()
                    .scaledToFill()
                    .background(Color.white
                    
                    )
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
            }
            .frame(width: self.geometry.size.width - 20, height: self.geometry.size.height)
            .cornerRadius(10)
            .padding(.all, 10)
            .shadow(radius: 5)
            
            VStack {
                HStack {
                    Text("GOOD")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.green)
                        .padding(.all, 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.green, lineWidth: 4)
                        )
                        .opacity(vm.numbers.last == self.number ? vm.goodOpacity : .zero)
                    
                    Spacer()
                    
                    Text("NOPE")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.red)
                        .padding(.all, 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.red, lineWidth: 4)
                        )
                        .opacity(vm.numbers.last == self.number ? vm.nopeOpacity : .zero)
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
                .frame(width: self.geometry.size.width - 20)
                .padding(.bottom, 40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
