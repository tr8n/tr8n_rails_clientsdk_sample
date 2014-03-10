require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Tr8nRailsClientsdkSample
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths += %W(#{config.root}/lib/models)

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    Tr8n.configure do |config|
      config.application = {
          :host => "https://sandbox.tr8nhub.com",
          :key => "37f812fac93a71088",
          :secret => "a9dc95ff798e6e1d1"
      }
      config.cache = {
          :enabled  => true,
          :adapter  => 'memcache',
          :host     => 'localhost:11211',
          :version  => 1,
          :timeout  => 3600
      }
      config.logger  = {
          :enabled  => false,
          :path     => "#{Rails.root}/log/tr8n.log",
          :level    => 'debug'
      }
    end

  end
end
