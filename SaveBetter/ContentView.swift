//
//  ContentView.swift
//  SaveBetter
//
//  Created by Karner David on 3/23/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 💀, 🫥, 😈, 🎃
}

struct ContentView: View {
    var body: some View {
        TabView {
            MainScreen()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("Calls")
                }
            Tracker()
                .tabItem() {
                    Image(systemName: "person.2.fill")
                    Text("People")
                }
        }
    }
}

#Preview {
    ContentView()
}
