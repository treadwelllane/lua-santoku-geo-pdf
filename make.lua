local env = {

  name = "santoku-geo-pdf",
  version = "0.0.5-1",
  variable_prefix = "TK_GEO_PDF",
  license = "MIT",
  public = true,

  dependencies = {
    "lua >= 5.1",
    "santoku >= 0.0.162-1",
    "lua-zlib >= 1.2-2",
  },

  test = {
    dependencies = {
      "santoku-test >= 0.0.8-1",
      "santoku-fs >= 0.0.16-1",
      "luassert >= 1.9.0-1",
      "luacheck >= 1.1.0-1",
      "luacov >= 0.15.0-1",
    }
  },

}

env.homepage = "https://github.com/treadwelllane/lua-" .. env.name
env.tarball = env.name .. "-" .. env.version .. ".tar.gz"
env.download = env.homepage .. "/releases/download/" .. env.version .. "/" .. env.tarball

return {
  type = "lib",
  env = env,
}
