//
//  gibolayout.swift
//  Swift_Study_prat2
//
//  Created by mimi_0_0 on 2024/03/07.
//

import SwiftUI

struct gibolayout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Text Headline")
                .bold()
                .font(.headline)
                .padding()
            Text("Text sublibe")
                .font(.subheadline)
                .padding()
            Text("Text Body")
                .font(.body)
                .padding()
            HStack {
                Button {
                    
                } label: {
                    Text("Button1")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .bold()
                }
                Button {
                    
                }label: {
                    Text("Button2")
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .bold()
                }
            }
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
            }
                
            

        }
    }
}

#Preview {
    gibolayout()
}
