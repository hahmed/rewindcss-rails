Deadfire.configure do |config|
  config.supressed = true
  config.root_path = Rails.root.join("app", "assets", "stylesheets")
end

class DeadfireCompiler < Propshaft::Compiler
  def compile(logical_path, input)
    Deadfire.parse(input)
  end
end

Rails.application.config.assets.compilers << ["text/css", DeadfireCompiler]