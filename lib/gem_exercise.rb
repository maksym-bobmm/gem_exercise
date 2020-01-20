# frozen_string_literal: true

require 'gem_exercise/configuration'
require 'gem_exercise/version'
require 'rails/railtie'

module GemExercise
  # class writes messages
  class Message < Rails::Railtie
    class << self
      attr_accessor :configuration

      def conf
        @configuration ||= Configuration.new
      end

      def reset
        @configuration = Configuration.new
      end

      def configure
        yield(conf) if block_given?
      end

      def write_message
        reset unless @configuration

        puts @configuration.message
      end
    end

    config.after_initialize do
      Message.write_message
    end
  end
end