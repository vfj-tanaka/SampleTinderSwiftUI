//
//  SignUpView.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/27.
//

import SwiftUI

struct SignUpView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .center, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    
                    Text("Tinder")
                        .font(.system(size: 80, weight: .heavy))
                        .foregroundColor(.white)
                    
                    TextField("Name", text: self.$name)
                        .asSignUpTextField()
                    
                    TextField("Email", text: self.$email)
                        .asSignUpTextField()
                    
                    TextField("Password", text: self.$password)
                        .asSignUpTextField()
                    
                    Button {
                        self.presentation.wrappedValue.dismiss()
                    } label: {
                        Text("登録")
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .cornerRadius(10)
                    
                    NavigationLink {
                        SignInView()
                    } label: {
                        Text("アカウントをお持ちの方")
                            .font(.system(size: 15))
                    }
                }
                .padding(.horizontal, 50)
            }
            .navigationBarHidden(true)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
