//
//  Tracker.swift
//  SaveBetter
//
//  Created by Karner David on 3/24/24.
//

import SwiftUI

struct Tracker: View {
    var body: some View {
        ZStack {
            Color.red
            
            Image(systemName: "phone.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

#Preview {
    Tracker()
}
