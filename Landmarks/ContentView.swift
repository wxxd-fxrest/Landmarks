//
//  ContentView.swift
//  Landmarks
//
//  Created by 밀가루 on 8/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("appleImage")
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 8)
        }
    }
}

#Preview {
    ContentView()
}
