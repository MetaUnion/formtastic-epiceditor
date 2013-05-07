# app/inputs/my_special_string_input.rb
# use with :as => :my_special_string
class EpicEditorInput < Formtastic::Inputs::TextInput
  def input_html_options
    {
      :class => "epiceditor"
    }.merge(super)
  end

  def to_html
    input_wrapping do
      label_html <<
      "<div id='#{input_html_options[:id]}-epiceditor' class='epiceditor-container'></div><div style='clear:both;'></div>".html_safe <<
      builder.hidden_field(method, input_html_options) <<
      buildInitScript(input_html_options[:id])
    end
  end

  private

  def assets_base_path
    example_path = '/themes/base/epiceditor.css'
    precompiled_example_path = ActionController::Base.helpers.asset_path('epiceditor' + example_path)
    File.dirname(precompiled_example_path).gsub(File.dirname(example_path), '')
  end

  def buildInitScript(id)
    randNum = rand(1..100000)
    return """
    <script>
    var el#{randNum} = $('##{id}'),
        html = el#{randNum}.val(),
        opts = {
          container: '#{id}-epiceditor',
          clientSideStorage: false,
          basePath: '#{assets_base_path}',
          theme: {
            base:'/themes/base/epiceditor.css',
            preview:'/themes/preview/preview-dark.css',
            editor:'/themes/editor/epic-light.css'
          }
        };

      var epicEditorInstances = epicEditorInstances || [],
          editor#{randNum} = new EpicEditor(opts).load();

      epicEditorInstances.push(editor#{randNum});

      editor#{randNum}.on('update', function(update){
        var str = editor#{randNum}.exportFile();
        el#{randNum}.val(str);
      }).importFile('#{id}-#{randNum}',html);
    </script>
    """.html_safe
  end
end
