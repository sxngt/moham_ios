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
        if isLoading {
            LaunchScreenView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                        isLoading.toggle()
                    })
                }
        }
        VStack {
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
