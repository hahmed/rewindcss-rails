
# source_root File.expand_path('install', __dir__)

say "Installing rewindcss-rails"

copy_file "#{__dir__}/application.css", "app/assets/stylesheets/application.css"
copy_file "#{__dir__}/normalize.css", "app/assets/stylesheets/normalize.css"

copy_file "#{__dir__}/initializers/deadfire.rb", "config/initializers/deadfire.rb"

APPLICATION_LAYOUT_PATH = Rails.root.join("app/views/layouts/application.html.erb")

if APPLICATION_LAYOUT_PATH.exist?
  say "Add stylesheet link tag in application layout"
  insert_into_file APPLICATION_LAYOUT_PATH.to_s, <<~ERB.indent(4), before: /^\s*<%= stylesheet_link_tag/
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
  ERB
end

