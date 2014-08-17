module TextileEditorHelper
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../vendor', __FILE__)
      desc 'Creates a TextileEditorHelper initializer and copies assets to app/assets'
      def copy_assets
        js_destination = 'app/assets/javascripts'
        css_destination = 'app/assets/stylesheets'
        copy_file 'assets/javascripts/textile-editor.js', "#{js_destination}/textile-editor.js"
        copy_file 'assets/javascripts/textile-editor-config.js', "#{js_destination}/textile-editor-config.js"
        copy_file 'assets/stylesheets/textile-editor.css', "#{css_destination}/textile-editor.css"
        directory 'assets/images/textile-editor', 'app/assets/images/textile-editor'
        readme 'README' if behavior == :invoke
      end
    end
  end
end
