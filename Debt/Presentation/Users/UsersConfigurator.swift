//
//  UsersConfigurator.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation


final class UsersConfigurator {
    
    public static func configureUsersView(with viewModel: UsersViewModel = UsersViewModel()) -> UsersView {
        let usersView = UsersView(viewModel: viewModel)
        return usersView
    }
}
