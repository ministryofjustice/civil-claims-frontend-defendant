require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require 'active_resource'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

puts "==== RAILS_ENV: #{ENV['RAILS_ENV']}"

ENV['API_HOST'] ||= 'http://localhost:3111'

module CivilClaimsFrontendDefendant
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # HTTP default headers
    config.action_dispatch.default_headers = {
       'X-Frame-Options' => 'DENY',
       'X-Content-Type-Options' => 'nosniff',
       'X-XSS-Protection' => '1; mode=block',
       'X-Content-Security-Policy' => "script-src 'self'"
    }

    # API Configuration
    config.api_uri = "#{ENV['API_HOST']}/repossession_claims_api/v1"
    puts "API endpoint is #{config.api_uri}"
  end
end
