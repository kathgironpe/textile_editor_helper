Feature: Copy Assets
  In order to install the textile editor helper gem 
	As a rails developer
	I want to copy the assets to respective directories 


Scenario: Assets are copied to rails asset directories
	Given a new Rails app
	When I run "rails g textile_editor_helper:install"
	Then I should see file "app/assets/stylesheets/textile-editor.css"
	And I should see file "app/assets/javascripts/textile-editor-config.js"
	And I should see file "app/assets/javascripts/textile-editor.js"
	And I should see file "public/images/textile-editor/italic.png"
	And I should see file "app/controllers/textile_preview_controller.rb"
	And I should see file "app/helpers/textile_preview_helper.rb"
	And I should see file "app/views/textile_preview/show.js.coffee"
	And I should see "textile_preview" in file "config/routes.rb"