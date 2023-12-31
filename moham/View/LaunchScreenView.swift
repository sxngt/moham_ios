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
            Image(.logo)
                .resizable()
            .frame(width: 370, height: 340)
        }
        
    }
}

#Preview {
    LaunchScreenView()
}
