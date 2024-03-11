//
//  gibonicon.swift
//  Swift_Study_prat2
//
//  Created by mimi_0_0 on 2024/03/07.
//

import SwiftUI

struct gibonicon: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
            Text("헤드라인 입니다.")
                .font(.headline)
                .bold()
                .padding()
            Text("서민이의 연습 노트 입니다.")
                .font(.subheadline)
                .padding()
            Text("바디 입니다.")
                .font(.body)
                .padding()
        }
        Button {
            
        }label: {
            Text("Click me")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        }
    }
}

#Preview {
    gibonicon()
}
