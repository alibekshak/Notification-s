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
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(.black)
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
