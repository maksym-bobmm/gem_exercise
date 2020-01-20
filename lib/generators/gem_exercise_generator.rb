# frozen_string_literal: true

# generate config in intializers
class GemExerciseGenerator < Rails::Generators::Base
  desc 'This generator creates an gem_exercise file at config/initializers'

  source_root File.expand_path('../templates', __FILE__)

  def copy_config_file
    template 'gem_exercise.rb', 'config/initializers/gem_exercise.rb'
  end
end
