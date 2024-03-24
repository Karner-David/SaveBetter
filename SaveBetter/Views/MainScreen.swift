//
//  MainScreen.swift
//  SaveBetter
//
//  Created by Karner David on 3/24/24.
//

import SwiftUI

struct MainScreen: View {
    @State var selection: Emoji = .🎃
    
    var body: some View {
        NavigationStack {
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
            .navigationTitle(Text("Test").font(.largeTitle)) 
            .navigationBarTitleDisplayMode(.inline)
            .padding(100)
        }
    }
}

#Preview {
    MainScreen()
}
