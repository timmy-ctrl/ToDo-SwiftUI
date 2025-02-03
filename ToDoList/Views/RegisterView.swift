//
//  RegisterView.swift
//  ToDoList
//
//  Created by Тимофей Олегович on 31.01.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var name = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(title: "Register",
                   subtitle: "Start organizing todos",
                   angle: -15,
                   backgoround: .orange)
        
        Form {
            
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account",
                     background: .green,
                     action: {
                //Attemmpt log in
            })
            .padding()
        }
        .offset(y: -50)
        Spacer()
    }
}

#Preview {
    RegisterView()
}
