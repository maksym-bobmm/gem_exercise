require 'gem_exercise/version'
require 'rails'
module GemExercise
  class Message
    attr @text

    def initialize
      intializer = File.read(File.expand_path('config/initializers'))

    end
  end
end