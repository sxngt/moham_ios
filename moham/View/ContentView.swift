//
//  ContentView.swift
//  moham
//
//  Created by ysh on 12/31/23.
//

import SwiftUI

struct ContentView: View {
    @State var isLoading: Bool = true
    var body: some View {
        ZStack {
            LoginView()
            if isLoading {
                LaunchScreenView().transition(.opacity).zIndex(1.0)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                withAnimation { isLoading.toggle()}
            })
        }
    }
}

#Preview {
    ContentView()
}
