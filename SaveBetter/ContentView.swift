//
//  ContentView.swift
//  SaveBetter
//
//  Created by Karner David on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            MainScreen()
                .tabItem() {
                    if (selection == 0) {
                        Image("BT_icon_goals_active")
                    } else {
                        Image("BT_icon_goals_unactive")
                    }
                    Text("Goals")
                }.tag(0)
            
            
            Tracker()
                .tabItem() {
                    if (selection == 1) {
                        Image("BT_icon_entry_active")
                    } else {
                        Image("BT_icon_entry_unactive")
                    }
                    Text("Add Entry")
                }.tag(1)
            
            
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .white
        }
        .tint(.black)

    }
}

#Preview {
    ContentView()
}
