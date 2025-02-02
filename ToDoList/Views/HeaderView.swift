//
//  HeaderView.swift
//  ToDoList
//
//  Created by Тимофей Олегович on 31.01.2025.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let backgoround: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgoround)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
        //Login Form
        
        //Create Accoiunt
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgoround: .blue)
}
