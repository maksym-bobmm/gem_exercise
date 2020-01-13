module GemExercise
  class Configuration
    attr_accessor :message

    def initialize
      @message = 'put your text to initializers/gem_exercise.rb'
    end
  end
end