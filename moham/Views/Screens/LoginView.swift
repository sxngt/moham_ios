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
        Button {
            if (UserApi.isKakaoTalkLoginAvailable()) {
                UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
                    if let error = error {
                                print(error)
                            }
                            else {
                                print("loginWithKakaoAccount() success.")
                                print(oauthToken)
                            }
                }
            }
        } label: {
            Image(.kakaoLoginLargeNarrow)
        }
    }
}

#Preview {
    LoginView()
}
