module Rewindcss
  class Engine < ::Rails::Engine
    isolate_namespace Rewindcss

    after_initialize do |app|
      Deadfire.configure do |config|
        config.root_path = Rails.root.join("app", "assets", "stylesheets")
      end
    end

    after_initialize do |app|
      class DeadfireCompiler < Propshaft::Compiler
        def compile(logical_path, input)
          Deadfire.parse(input)
        end
      end
      
      app.config.assets.compilers << ["text/css", DeadfireCompiler]
    end
  end
end
