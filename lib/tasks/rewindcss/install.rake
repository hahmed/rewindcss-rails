namespace :rewindcss do
  desc "Install Rewindcss"
  task :install do
    system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/rewindcss_generator.rb",  __dir__)}"
  end
end
