require 'gem_exercise/version'
module GemExercise
  class Message
    attr :text

    def initialize
      file_path = File.join(Rails.root, %w[config initializers gem_exercise.rb])
      @test = 'no initialize file found' and return unless File.exist? file_path
      IO.foreach(file_path) do |line|
        if line.include?('text')
          @text = line.split('=')[1]
        end
      end
    end

    def write_message
      puts(@text)
      #logger.info(@test).green
    end
  end
end