//
//  LoginView.swift
//  ToDoList
//
//  Created by Тимофей Олегович on 31.01.2025.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           backgoround: .pink)
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log in")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                .offset(y: -50)
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
