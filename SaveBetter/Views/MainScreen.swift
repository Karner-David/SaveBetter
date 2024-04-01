//
//  MainScreen.swift
//  SaveBetter
//
//  Created by Karner David on 3/24/24.
//

/**
*                  Possible future implementation: Adapt to device to fit to screen
*/

import SwiftUI

enum Emoji: String, CaseIterable {
    case 💀, 🫥, 😈, 🎃
}

enum Goal_States: String, CaseIterable {
    case Current, Past
}

struct MainScreen: View {
    @State var selection: Emoji = .🎃
    @State var goal_state: Goal_States = .Current
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        NavigationStack {
            Picker("Select Goal State", selection: $goal_state) {
                ForEach(Goal_States.allCases, id: \.self) { state in
                    Text("\(state.rawValue) \(state == .Current ? "Goal" : "Goals")")
                }
            } 
            .pickerStyle(.segmented)
            .padding(.top, -200)
            .padding(.bottom, 15)
            
            
            Text(" \(goal_state.rawValue) \(goal_state == .Current ? "Goal" : "Goals") ")
                .padding(.top, -180)
                .font(.system(size: 20))
                .bold()
            contentVStack

            
        }
        .navigationTitle(Text("Test").font(.largeTitle))
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var contentVStack: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size: 150))
            
            Picker("Select Emoji", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self) { emoji in
                    Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
    }
}

#Preview {
    MainScreen()
}
