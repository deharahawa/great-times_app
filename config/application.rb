require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
# config.assets.initialize_on_precompile = false

ActionController::Base.asset_host = Proc.new { |source|
  if source.ends_with?('.css')
    "http://stage-greattimes-app.herokuapp.com"
  else
    "http://assets.example.com"
  end
}

module Broadway
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
