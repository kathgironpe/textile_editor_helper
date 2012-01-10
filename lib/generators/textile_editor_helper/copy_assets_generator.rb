module TextileEditorHelper
  module Generators
    class CopyAssetGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../vendor/assets', __FILE__)

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

        copy_file 'javascripts/textile-editor.js', "#{js_destination}/textile-editor.js"
        copy_file 'javascripts/textile-editor-config.js', "#{js_destination}/textile-editor-config.js"
        copy_file 'stylesheets/textile-editor.css', "#{css_destination}/textile-editor.css"
        
        directory 'images/textile-editor', "public/images/textile-editor"
        
      end
    end
  end
end

