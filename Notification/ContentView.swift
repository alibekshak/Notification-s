//
//  ContentView.swift
//  Notification
//
//  Created by Apple on 13.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Button("Notification"){
                    UIApplication.shared.inAppNotification(adaptForDynamicIsland: true, timeout: 5, swipeToClose: true){
                        HStack{
                            Image("The_Mill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .cornerRadius(15)
                            
                            VStack(alignment: .leading, spacing: 4){
                                Text("iAplle")
                                    .font(.callout.bold())
                                    .foregroundStyle(.white)
                                
                                Text("Hi, This is iApple")
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            
                            Spacer(minLength: 0)
                            
                            Button(action: {}, label: {
                                Image(systemName: "speaker.slash.fill")
                                    .font(.title3)
                            })
                            .buttonStyle(.bordered)
                            .buttonBorderShape(.capsule)
                            .tint(.white)
                        }
                        .padding(15)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.black)
                        )
                    }
                }
            }.navigationTitle("App Notification")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
