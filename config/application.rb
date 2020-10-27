require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Airbnb
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.load_defaults 6.0
    config.assets.initialize_on_precompile = false

    config.generators do |g|
      g.assets false          # for CSS, JavaScript files
      g.test_framework false  # for test files
      g.test_framework :rspec,
                       controller_specs: false,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.time_zone = 'Tokyo'
  end
end
