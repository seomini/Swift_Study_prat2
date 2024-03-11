//
//  List.swift
//  Swift_Study_prat2
//
//  Created by mimi_0_0 on 2024/03/11.
//

import SwiftUI


struct Fruit: Hashable {
    let name: String
    let matchFruitsName: String
    let price: Int
}
struct ListLoop: View {
    
    @State var favoriteFruits = [
        Fruit(name: "Apple",
              matchFruitsName: "pich",
              price: 1000),
        Fruit(name: "banana",
             matchFruitsName: "kiwi",
             price: 3000),
        Fruit(name: "orange",
             matchFruitsName: "mango",
             price: 4000),
        Fruit(name: "water melon",
             matchFruitsName: "cherry",
             price: 2400),
        Fruit(name: "melon",
             matchFruitsName: "papple",
             price: 80000)
    ]
    
    @State var fruitName: String = ""
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    TextField("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName,
                                                    matchFruitsName: "Apple",
                                                    price: 10000))
                    }label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack( alignment: .leading) {
                            Text("name: \(fruit.name)")
                            Text("matchFruitsName: \(fruit.matchFruitsName)")
                            Text("price: \(fruit.price)")
                        }
                    }.onDelete(perform: { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    })
                }
                .navigationTitle("Fruit List")
            }
        }
    
    }
}

#Preview {
    ListLoop()
}
