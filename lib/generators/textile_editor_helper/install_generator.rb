module TextileEditorHelper
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates/textile_editor_helper', __FILE__)

      private

      def self.asset_pipeline_enabled?
        (Rails.configuration.respond_to?(:assets) ? (Rails.configuration.assets || {}) : {})[:enabled]
      end

      def asset_pipeline_enabled?
        self.class.asset_pipeline_enabled?
      end

      public

      def show_readme
        readme 'README' if behavior == :invoke
      end

    end
  end
end

