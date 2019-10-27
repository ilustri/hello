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

    var variavel1 = "var1"
    var variavel2 = "var2"
    var variavel3 = "var3"
    var variavel4 = "var4"
    var variavel5 = "var5"
    // fim
    return app
}
