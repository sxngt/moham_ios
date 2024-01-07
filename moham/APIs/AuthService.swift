//
//  AuthService.swift
//  moham
//
//  Created by ysh on 1/3/24.
//

import Foundation
import Alamofire

class AuthService {
    let baseURL: URL = URL(string: "http://localhost:8000/")!
    func authenticateWithToken(token: Any) {
        print("{₩\(token)으로 인증요청")
        
        let res:HTTPURLResponse? = AF.request(
            baseURL.absoluteString,
            method: .post,
            parameters: [:],
            encoding: JSONEncoding.default,
            headers: [:]
        )
        .response
        
        print(res)
    }
    func apiCallTest() {
        let res:HTTPURLResponse? = AF.request(
            baseURL.absoluteString,
            method: .post,
            parameters: [:],
            encoding: JSONEncoding.default,
            headers: [:]
        )
        .response
        print(res)
    }

}
