namespace :rewindcss do
  desc "Install base rewindcss"
  task :install do
    system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../base/generator.rb",  __dir__)}"
  end

  desc "Install purecss"
  task :purecss do
    system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../purecss/generator.rb",  __dir__)}"
  end
end
