//
//  LoginView.swift
//  moham
//
//  Created by ysh on 12/31/23.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKUser
struct LoginView: View {
    var kakaoAuthService = KakaoAuthService()
    var body: some View {
        VStack {
            Image(.logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .padding(.top, 100)
            Spacer()
            Button {
                kakaoAuthService.kakaoLoginGate()
            } label: {
                Image(.kakaoLoginLargeNarrow)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 210)
            }
        }
    }
}

#Preview {
    LoginView()
}
