//
//  UserPictureService.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation
import Combine


protocol UserPictureServiceProtocol: AnyObject {
    
    var networker: NetworkerProtocol { get }
    func getUserAvatarData(urlString: String) -> AnyPublisher<Data, Error>
}

final class UserPictureService: UserPictureServiceProtocol {
    
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getUserAvatarData(urlString: String) -> AnyPublisher<Data, Error> {
        guard let url = URL(string: urlString) else {
            return Fail<Data, Error>(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return networker.getData(url: url, headers: [:])
            .mapError { _ in UserPictureError.dataInvalid }
            .eraseToAnyPublisher()
    }
}

extension UserPictureService {
    
    enum UserPictureError: Error {
        case dataInvalid
    }
}
