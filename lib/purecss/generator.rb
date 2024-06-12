say "Installing purecss"

copy_file "#{__dir__}/application.css", "app/assets/stylesheets/application.css"
# NOTE: this is the responsive version of purecss
copy_file "#{__dir__}/pure.css", "app/assets/stylesheets/pure.css"

if Rails.application.config.try(:action_text).present?
  copy_file "#{__dir__}/../shared/trix.css", "app/assets/stylesheets/trix.css"
  insert_into_file "app/assets/stylesheets/application.css", <<~CSS, after: /^@import "pure";/
    \n@import "trix";
  CSS
end

copy_file "#{__dir__}/../shared/initializers/deadfire.rb", "config/initializers/deadfire.rb"

APPLICATION_LAYOUT_PATH = Rails.root.join("app/views/layouts/application.html.erb")

if APPLICATION_LAYOUT_PATH.exist?
  say "Add stylesheet link tag in application layout"
  insert_into_file APPLICATION_LAYOUT_PATH.to_s, <<~ERB.indent(4), before: /^\s*<%= stylesheet_link_tag/
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
  ERB
end
