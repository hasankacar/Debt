//
//  Endpoint+Users.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation


extension Endpoint {
    
    static func user(id: String) -> Self    { return Endpoint(path: "/user/\(id)") }
    static func users() -> Self             { return Endpoint(path: "/user") }
    static func users(count: Int) -> Self   {
        return Endpoint(path: "/user", queryItems: [URLQueryItem(name: "limit", value: "\(count)")])
    }
}
