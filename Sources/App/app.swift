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

    var variavel1 = "var1" // commit 27oct2019  14:30
    var variavel2 = "18:47 28oct2019" 
    var Carol4      = "2019-10-30 07:52"
    // fim
    return app
}
