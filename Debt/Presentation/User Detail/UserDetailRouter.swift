//
//  UserDetailRouter.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import SwiftUI


final class UserDetailRouter {
    
    public static func destinationForMoreInfoAction(user: User) -> some View {
        return MoreInfoConfigurator.configureMoreInfoView(with: user)
    }
}
