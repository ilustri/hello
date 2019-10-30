import Vapor

/// Creates an instance of `Application`. This is called from `main.swift` in the run target.
public func app(_ env: Environment) throws -> Application {
    var config = Config.default()
    var env = env
    
    //top
    var services = Services.default()
    try configure(&config, &env, &services)
    let app = try Application(config: config, environment: env, services: services)
    try boot(app)

    var Carol4      = "2019-10-30 07:52"
    var Carol5      = "2019-10-30 07:59"

    var Carol6      = "Carol 2019-10-30 08:09"
    // fim
    return app
}
