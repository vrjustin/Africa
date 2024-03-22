//
//  ContentView.swift
//  Africa
//
//  Created by Justin Maronde on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List() {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
}
