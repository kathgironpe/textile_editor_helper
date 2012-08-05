module TextileEditorHelper
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../vendor', __FILE__)

      private

      def self.asset_pipeline_enabled?
        (Rails.configuration.respond_to?(:assets) ? (Rails.configuration.assets || {}) : {})[:enabled]
      end

      def asset_pipeline_enabled?
        self.class.asset_pipeline_enabled?
      end

      public

      if asset_pipeline_enabled?
        desc 'Creates a TextileEditorHelper initializer and copies assets to app/assets and public/images.'
      else
        desc 'Creates a TextileEditorHelper initializer and copies assets to public directories.'
      end

      def copy_javascript_asset
        if asset_pipeline_enabled?
          js_destination = 'app/assets/javascripts'
          css_destination = 'app/assets/stylesheets'
        else
          js_destination = 'public/javascripts'
          css_destination = 'public/stylesheets'
        end

        copy_file 'assets/javascripts/textile-editor.js', "#{js_destination}/textile-editor.js"
        copy_file 'assets/javascripts/textile-editor-config.js', "#{js_destination}/textile-editor-config.js"
        copy_file 'assets/stylesheets/textile-editor.css', "#{css_destination}/textile-editor.css"
        lines = File.read("config/routes.rb").split("\n")
        lines[3, 0] = "match 'textile_preview' => 'textile_preview#show'"
        File.open("config/routes.rb", 'w') { |f| f.write(lines.join("\n")) }


        directory 'app/views/textile_preview', 'app/views/textile_preview'
        directory 'assets/images/textile-editor', 'public/images/textile-editor'

        readme 'README' if behavior == :invoke

      end
    end
  end
end

