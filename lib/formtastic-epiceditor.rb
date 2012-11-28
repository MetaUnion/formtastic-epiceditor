require "rails"

module FormtasticEpiceditor
  # Required for formtastic.css to be discoverable in the asset pipeline
  # @private
  class Engine < ::Rails::Engine
    require "formtastic"
    require "formtastic-epiceditor/inputs/epic_editor_input.rb"
  end
end
