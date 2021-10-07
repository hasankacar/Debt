//
//  UsersRouter.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import SwiftUI


final class UsersRouter {
    
    public static func destinationForTappedUser(user: User) -> some View {
        return UserDetailConfigurator.configureUserDetailView(with: user)
    }
}
