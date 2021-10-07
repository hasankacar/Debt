//
//  UserDetailConfigurator.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation


final class UserDetailConfigurator {
    
    public static func configureUserDetailView(with user: User) -> UserDetailView {
        
        let userDetailView = UserDetailView(viewModel: UserDetailViewModel(user: user))
        return userDetailView
    }
}
