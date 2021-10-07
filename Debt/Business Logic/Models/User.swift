//
//  User.swift
//  Users
//
//  Created by vendetta on 02/10/21
//
import Foundation


struct User: Codable, Identifiable {
    
    let id: String
    let title: String
    let firstName: String
    let lastName: String
    let email: String?
    let dateOfBirth: String?
    let registerDate: String?
    let phone: String?
    let picture: String?
    
    var fullName: String { return "\(self.firstName.capitalized) \(self.lastName.uppercased())"}
}

extension User {
    
    static func fake() -> Self {
        return User(id: "923619", title: "Fake User", firstName: "First Name", lastName: "Last Name", email: "test@thy.com", dateOfBirth: "1/1/1991", registerDate: "1/1/2021", phone: "+123456", picture: "https://www.linkpicture.com/q/v_1.png")
    }
}
