//
//  SignInView.swift
//  SampleTinderSwiftUI
//
//  Created by mtanaka on 2022/09/27.
//

import SwiftUI

struct SignInView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .center, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    
                    Text("Login")
                        .font(.system(size: 80, weight: .heavy))
                        .foregroundColor(.white)
                    
                    TextField("Email", text: self.$email)
                        .asSignUpTextField()
                    
                    TextField("Password", text: self.$password)
                        .asSignUpTextField()
                    
                    Button {
                        
                    } label: {
                        Text("ログイン")
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .cornerRadius(10)
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("アカウントをお持ちでない方")
                            .font(.system(size: 15))
                    }
                }
                .padding(.horizontal, 50)
            }
            .navigationBarHidden(true)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
