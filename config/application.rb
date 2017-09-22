require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TravelBehavior
  class Application < Rails::Application
    # Try loading a YAML file at `./config/env.[environment].yml`, if it exists
    # Kudos to Thomas Fuchs (http://mir.aculo.us) for the initial implementation
    # Try loading a YAML file at `./config/env.[environment].yml`, if it exists
    def load_env_file(environment = nil)
      path = Rails.root.join("config", "env#{environment.nil? ? '' : '.'+environment}.yml")
      return unless File.exist? path
      config = YAML.load(ERB.new(File.new(path).read).result)
      config.each { |key, value| ENV[key.to_s] = value.to_s }
    end

    config.active_record.schema_format = :sql

    # Load environment variables. config/env.yml contains defaults which are
    # suitable for development. (This file is optional).
    load_env_file

    # Now look for custom environment variables, stored in env.[environment].yml
    # For development, this file is not checked into source control, so feel
    # free to tweak for your local development setup. Any values defined here
    # overwrite the defaults in `env.yml`
    load_env_file(Rails.env)

    config.assets.initialize_on_precompile = false
  end
end
