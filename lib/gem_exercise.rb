require 'gem_exercise/configuration'
require 'gem_exercise/version'

module GemExercise
  class Message < Rails::Railtie
    attr_accessor :configuration

    config.after_initialize do
      write_message
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.reset
      @configuration = Configuration.new
    end

    def self.configure
      yield(configuration) if block_given?
    end

    def self.write_message
      reset unless @configuration

      puts @configuration&.message
    end
  end
end