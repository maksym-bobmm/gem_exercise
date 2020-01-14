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

    #def initialize
    #  file_path = File.join(Rails.root, %w[config initializers gem_exercise.rb])
    #  @test = 'no initialize file found' and return unless File.exist? file_path
    #  file = File.read(file_path)
    #  @text = file.split('=')[1]
    #end

    def self.write_message
      reset unless @configuration

      puts @configuration&.message
      #logger.info(@test).green
    end
  end
end