# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
ActionController::Base.asset_host = Proc.new { |source|
if source.ends_with?('.css')
  "https://stage-greattimes-app.herokuapp.com/"
else
  "http://assets.example.com"
end
}
image_tag("rails.png")
# => <img alt="Rails" src="http://assets.example.com/assets/rails.png" />
stylesheet_link_tag("application")
# => <link href="http://stylesheets.example.com/assets/application.css" media="screen" rel="stylesheet" />