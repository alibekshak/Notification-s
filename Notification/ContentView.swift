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
                        HStack(alignment: .center, spacing: 10){
                            Image("The_Mill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 34, height:34)
                                .cornerRadius(15)
                            
                            Text("Hi, This is iApple")
                                .font(.caption)
                                .foregroundStyle(.white)

                            Spacer(minLength: 0)
                            
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 16)
                        .background(.black)
                        .cornerRadius(16)
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
