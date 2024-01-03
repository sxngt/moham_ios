//
//  ContentView.swift
//  moham
//
//  Created by ysh on 12/31/23.
//

import SwiftUI

struct ContentView: View {
    @State var showMainView: Bool = false
    var body: some View {
        ZStack {
            if showMainView {
                LoginView()
            } else {
                LaunchScreenView().transition(.opacity).zIndex(1.0) //스플래시 스크린
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                            withAnimation { showMainView.toggle()}
                        })
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
