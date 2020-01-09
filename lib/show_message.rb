require 'gem_exercise'
require 'rails'

module Rails
  class Server < ::Rack::Server
    class Options
      def initialize(options = nil)
        super
        GemExercise::Message.message
      end
    end
  end
end