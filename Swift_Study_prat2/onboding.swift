//
//  onboding.swift
//  Swift_Study_prat2
//
//  Created by mimi_0_0 on 2024/03/07.
//

import SwiftUI

struct onboding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .bold()
                .font(.system(size: 35))
                .padding()
                .padding(. top, 50)
                
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal,20)
                    .foregroundColor(.blue)
                VStack (alignment: .leading){
                    Text("What's New in Photos")
                        .bold()
                        .font(.headline)
                    Text("What's New in Photos memo ria apple photo is black work speed block shie What's New in Photos memo ria apple ")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            HStack {
                Image(systemName: "archivebox.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal,20)
                    .foregroundColor(.blue)
                VStack (alignment: .leading){
                    Text("What's New in Photos")
                        .bold()
                        .font(.headline)
                    Text("What's New in Photos memo ria apple photo is black work speed block shie What's New in Photos memo ria apple ")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "note")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal,20)
                    .foregroundColor(.blue)
                VStack (alignment: .leading){
                    Text("What's New in Photos")
                        .bold()
                        .font(.headline)
                    Text("What's New in Photos memo ria apple photo is black work speed block shie What's New in Photos memo ria apple ")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            Spacer()
            
            Button {
                
            }label: {
                Text("Continue")
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 350)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom , 40)


        }
    }
}

#Preview {
    onboding()
}
