import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // Listen on all interfaces
    app.http.server.configuration.hostname = "0.0.0.0"

    // register routes
    try routes(app)
}
