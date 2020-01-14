module GemExercise
  class Configuration
    attr_accessor :message

    def initialize
      @message = <<~TEXT
                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
                     ░░░░░░░░░░░░░▄▄▄▄▄▄▄░░░░░░░░░
                     ░░░░░░░░░▄▀▀▀░░░░░░░▀▄░░░░░░░
                     ░░░░░░░▄▀░░░░░░░░░░░░▀▄░░░░░░
                     ░░░░░░▄▀░░░░░░░░░░▄▀▀▄▀▄░░░░░
                     ░░░░▄▀░░░░░░░░░░▄▀░░██▄▀▄░░░░
                     ░░░▄▀░░▄▀▀▀▄░░░░█░░░▀▀░█▀▄░░░
                     ░░░█░░█▄▄░░░█░░░▀▄░░░░░▐░█░░░
                     ░░▐▌░░█▀▀░░▄▀░░░░░▀▄▄▄▄▀░░█░░
                     ░░▐▌░░█░░░▄▀░░░░░░░░░░░░░░█░░
                     ░░▐▌░░░▀▀▀░░░░░░░░░░░░░░░░▐▌░
                     ░░▐▌░░░░░░░░░░░░░░░▄░░░░░░▐▌░
                     ░░▐▌░░░░░░░░░▄░░░░░█░░░░░░▐▌░
                     ░░░█░░░░░░░░░▀█▄░░▄█░░░░░░▐▌░
                     ░░░▐▌░░░░░░░░░░▀▀▀▀░░░░░░░▐▌░
                     ░░░░█░░░░░░░░░░░░░░░░░░░░░█░░
                     ░░░░▐▌▀▄░░░░░░░░░░░░░░░░░▐▌░░
                     ░░░░░█░░▀░░░░░░░░░░░░░░░░▀░░░
                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
      TEXT
    end
  end
end