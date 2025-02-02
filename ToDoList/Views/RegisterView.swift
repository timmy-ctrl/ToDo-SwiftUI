//
//  RegisterView.swift
//  ToDoList
//
//  Created by Тимофей Олегович on 31.01.2025.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        HeaderView(title: "Register",
                   subtitle: "Start organizing todos",
                   angle: -15,
                   backgoround: .orange)
        Spacer()
    }
}

#Preview {
    RegisterView()
}
