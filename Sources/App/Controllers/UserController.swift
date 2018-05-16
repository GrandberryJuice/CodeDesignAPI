//
//  UserController.swift
//  App
//
//  Created by KENNETH GRANDBERRY on 5/14/18.
//

import Foundation
import Vapor

struct UserController: RouteCollection {
    func boot(router: Router) throws {
        let userRoute = router.grouped("api","users")
        
        userRoute.get(use: getAllHandler)
        userRoute.post(use: createhandler)
    }
    
    func getAllHandler(_ req: Request) throws -> Future <[code_design_user]> {
        return code_design_user.query(on: req).all()
    }
    
    func createhandler(_ req: Request) throws -> Future <code_design_user> {
        let user = try req.content.decode(code_design_user.self)
        return user.save(on: req)
    }
}
