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
    var body: some View {
        VStack {
            Image(.logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .padding(.top, 100)
            Spacer()
            Button {
                if (UserApi.isKakaoTalkLoginAvailable()) {
                    UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
                        if let error = error {
                                    print(error)
                                }
                                else {
                                    print(oauthToken?.accessToken)
                                }
                    }
                }
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
