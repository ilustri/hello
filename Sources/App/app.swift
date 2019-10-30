import Vapor

public func app(_ env: Environment) throws -> Application {
    var config = Config.default()
    var env = env
    var services = Services.default()
    try configure(&config, &env, &services)
    let app = try Application(config: config, environment: env, services: services)
    try boot(app)
    // Testando Rebase
    var carol_rebase = "Carol 2019-10-30 08:22"


    return app
}
