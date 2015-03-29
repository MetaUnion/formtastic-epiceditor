require "rails"

module FormtasticEpiceditor
  # Required for formtastic.css to be discoverable in the asset pipeline
  # @private
  class Engine < ::Rails::Engine
    require "formtastic"
    require "formtastic-epiceditor/inputs/epic_editor_input.rb"

    initializer "formtastic-epiceditor.assets.precompile" do |app|
      app.config.assets.precompile += %w(epiceditor/themes/**/*)
      app.config.assets.precompile += %w(epiceditor/*.png)
    end
  end
end
