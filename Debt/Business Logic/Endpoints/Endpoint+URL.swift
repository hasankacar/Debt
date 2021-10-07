//
//  Endpoint+URL.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation


extension Endpoint {
    
    var headers: [String: Any] { return ["app-id": "6158375e3088dc1b1604a287"] }
    var url: URL {
        var components          = URLComponents()
        components.scheme       = "https"
        components.host         = "dummyapi.io"
        components.path         = "/data/v1" + path
        components.queryItems   = queryItems
        
        guard let url = components.url else { preconditionFailure("Invalid URL components: \(components)") }
        return url
    }
}
