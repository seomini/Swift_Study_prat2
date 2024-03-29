//
//  Setting.swift
//  Swift_Study_prat2
//
//  Created by mimi_0_0 on 2024/03/11.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let forgrondColor: Color = .white
}
struct Setting: View {
    
    let data: [[SettingInfo]] = [[SettingInfo(title: "스크린타임",
                                           systemName:"hourglass",
                                              backgroundColor:.purple)],
                               [SettingInfo(title: "일반",
                                           systemName:"gear",
                                            backgroundColor:.gray),
                               SettingInfo(title: "손쉬운 사용",
                                           systemName:"person.crop.circle",
                                           backgroundColor:.blue),
                               SettingInfo(title: "개인정보 보호 및 보안",
                                           systemName:"hand.raised.fill",
                                           backgroundColor:.blue)],
                               [SettingInfo(title: "암호",
                                           systemName:"key.fill",
                                            backgroundColor:.gray)]
    ]
    var body: some View {
        NavigationStack{
            List{
                ForEach(data, id: \.self) { section in
                    Section{
                        ForEach(section, id: \.self) { item in
                            Label{
                                Text(item.title)
                            }icon: {
                                Image(systemName: item.systemName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:20,height: 20)
                                        .padding(.all,7)
                                        .background(item.backgroundColor)
                                        .foregroundColor(item.forgrondColor)
                                        .cornerRadius(6)
                            }
                        }
                    }
                    
                }
//                Section {
//                    Label {
//                        Text("스크린타임")
//                    }icon: {
//                        Image(systemName: "hourglass")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:20,height: 20)
//                            .padding(.all,7)
//                            .background(.purple)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                }
//                Section {
//                    Label {
//                        Text("일반")
//                    }icon: {
//                        Image(systemName: "gear")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:20,height: 20)
//                            .padding(.all,7)
//                            .background(.gray)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                    Label {
//                        Text("손쉬운 사용")
//                    }icon: {
//                        Image(systemName: "person.crop.circle")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:20,height: 20)
//                            .padding(.all,7)
//                            .background(.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                    Label {
//                        Text("개인정보 보호 및 보안")
//                    }icon: {
//                        Image(systemName: "hand.raised.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:20,height: 20)
//                            .padding(.all,7)
//                            .background(.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                }
//                Section{
//                    Label {
//                        Text("암호")
//                    }icon: {
//                        Image(systemName: "key.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:20,height: 20)
//                            .padding(.all,7)
//                            .background(.gray)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                }
            }.navigationTitle("설정")
                
        }
    }
}

#Preview {
    Setting()
}
