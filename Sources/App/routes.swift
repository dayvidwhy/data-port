import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "Base"
    }

    app.get("test") { req async -> String in
        "Test"
    }
}
