//
//  mohamApp.swift
//  moham
//
//  Created by ysh on 12/31/23.
//
import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct mohamApp: App {
    init() {
        //KakaoSDK init
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
    }
    var body: some Scene {
        WindowGroup {
            
            ContentView().onOpenURL(perform: {
                url in if (AuthApi.isKakaoTalkLoginUrl(url)) {
                    AuthController.handleOpenUrl(url: url)
                }
            })
        }
    }
}

