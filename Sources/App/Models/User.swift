//
//  User.swift
//  App
//
//  Created by KENNETH GRANDBERRY on 5/10/18.
//

import FluentPostgreSQL
import Vapor


final class code_design_user: Codable {
    /// The unique identifier for this user.
    
    static let entity = "User"
    
    var id: Int?
    var firstName: String
    var lastName: String
    var photo:String?
    var bio: String?
    
    /// Creates a new user.
    init(id: Int? = nil, firstName: String, lastName: String, photo: String? = nil, bio: String?) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.photo = photo
        self.bio = bio
    }
}

extension code_design_user: Migration {}
extension code_design_user: Content {}
extension code_design_user: PostgreSQLModel {}

// If not using PostgresSQLModel
//extension User: Model {
//    typealias Database = PostgreSQLDatabase
//    typealias ID = Int
//    static let idKey: IDKey = \User.id
//}
