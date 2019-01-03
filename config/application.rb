require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ParachuteBackend
  class Application < Rails::Application
  config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '*', :headers => :any, :methods => [:get, 
        :post, :delete, :put, :patch, :options, :head]
      end
    end
  # Initialize configuration defaults for originally generated Rails version.
  config.load_defaults 5.2

  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration can go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded after loading
  # the framework and any gems in your application.
# skip_before_action :verify_authenticity_token

# ActiveModelSerializers.config.adapter = :json_api

# api_mime_types = %W(
#   application/vnd.api+json
#   text/x-json
#   application/json
# )
# Mime::Type.register 'application/vnd.api+json', :json, api_mime_types
# end
  end
end