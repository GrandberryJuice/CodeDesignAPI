import Vapor
import FluentPostgreSQL

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    let userController = UserController()
    try router.register(collection: userController)
}
