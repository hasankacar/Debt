//
//  MoreInfoConfigurator.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation


final class MoreInfoConfigurator {
    
    static func configureMoreInfoView(with user: User) -> MoreInfoView {
        let viewModel = MoreInfoViewModel(user: user)
        return MoreInfoView(viewModel: viewModel)
    }
}
