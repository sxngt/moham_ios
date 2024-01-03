//
//  LaunchScreenView.swift
//  moham
//
//  Created by ysh on 12/31/23.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        VStack {
            Image(.logoFull)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 370)
                .background(Color.white)
        }
            
    }
}

#Preview {
    LaunchScreenView()
}
