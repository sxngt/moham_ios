import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

struct KakaoAuthService {
    var authService = AuthService()
    func getAccessTokenInfo() {
        UserApi.shared.accessTokenInfo {(accessTokenInfo, error) in
            if let error = error {
                print(error)
            }
            else {
                print("accessTokenInfo() success.")
                
                //do something
                _ = accessTokenInfo
                authService.authenticateWithToken(token: accessTokenInfo)
            }
        }
    }
    func loginWithKaKao() {
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    
                    //do something
                    _ = oauthToken
                    authService.authenticateWithToken(token: oauthToken?.accessToken)
                }
            }
        }
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print(error)
            }
            else {
                print("loginWithKakaoAccount() success.")
                
                //do something
                _ = oauthToken
            }
        }
    }
    func kakaoLoginGate() {
        if (AuthApi.hasToken()) {
            UserApi.shared.accessTokenInfo { (_, error) in
                if let error = error {
                    if let sdkError = error as? SdkError, sdkError.isInvalidTokenError() == true  {
                        //로그인 필요
                        loginWithKaKao()
                    }
                    else {
                        //기타 에러
                    }
                }
                else {
                    print("기존 토큰 있다")
                    getAccessTokenInfo()
                    //토큰 유효성 체크 성공(필요 시 토큰 갱신됨) 성공시 로그인 Pass
                }
            }
        }
        else {
            //로그인 필요
            loginWithKaKao()
        }
    }
}
