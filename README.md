## Textile Editor Helper

[![Build Status](https://secure.travis-ci.org/katgironpe/textile_editor_helper.png)](http://travis-ci.org/katgironpe/textile_editor_helper)
[![Code Climate](https://codeclimate.com/github/katgironpe/textile_editor_helper.png)](https://codeclimate.com/github/katgironpe/textile_editor_helper)

Textile Editor Helper is a plugin for Ruby on Rails to add a Textile toolbar above textareas.

This version of Textile Editor Helper is a fork of the code found at http://svn.webtest.wvu.edu/repos/rails/plugins/textile_editor_helper/ to allow for use with the form_for method.


## Dependencies

To use Textile Editor Helper you must use the jQuery JavaScript library.

Follow best practices like adding JS files at the bottom of the page (before closing body tag).

For Rails 3.2, vendor/plugins was removed that is why this gem exists. Rails versions below 3.2 are not supported. Ruby version 1.8.7 is not supported.


## Rails Quickstart

Directions to get the helper up and running for your install:

First, you'll need to add the gems required. RedCloth (or an alterntative) and htmlentities are also required.

	 gem 'textile_editor_helper'

	 gem 'RedCloth'

	 gem 'htmlentities'

and do

	rails g textile_editor_helper:install

It's important that you read the example provided. Your application.js should look like the following. Make sure to update the order of your JS files.

    //= require jquery
    //= require jquery_ujs
    //= require textile-editor

To use the Textile Editor Helper with a specific text area, you can choose between the following options:

    <%= f.textile_editor :description %>

    <%= textile_editor :user, "website" %>

    <%= textile_editor_tag 'description', :description %>

### For simple_form users

    <%= f.input :body, as: :textile_editor %>

### For formtastic users

    <%= f.input :body, as: :textile_editor %>

**Just like writing a text area tag!**

At the end of your form put in the following code:

    <%= textile_editor_initialize %> **Important!**


Then, just save your view and check it out.

## Examples

<a href="https://github.com/bridgeutopia/textile_editor_helper/wiki/Examples" target="_blank">Basic Examples</a>

Recently created a Rails 3.2.8 app that uses simple_form and textile_editor_helper, <a href="https://github.com/bridgeutopia/textile-editor-helper-examples" target="_blank">check it out</a>.

## Testing

	git clone git://github.com/bridgeutopia/textile_editor_helper.git
	cd textile_editor_helper
	bundle install
	bundle exec rake


## Preview Feature

Textile Editor Preview feature is no longer supported. The wiki page will be updated to show two different ways of adding the preview feature to your app.

## Requests for improvement

A lot of features have been removed and added here. This is completely refactored for simplicity and support of form builders other than the Rails default.
To request for improvement, please do not send email to the maintainer. Create an issue instead. Thank you.


## More Info on Textile

To learn more about Textile check out: <a href="http://www.textism.com/tools/textile/index.php" target="_blank">Textism</a> & <a href="http://hobix.com/textile/" target="_blank">Textile Reference</a>


## More Info on Slate

slate is the CMS in development at West Virginia University that led to the development of Textile Editor Helper. Learn more at: http://slateinfo.blogs.wvu.edu


## License

Textile Editor Helper is released under the MIT license.


## Acknowledgements

Textile Editor Helper was created by Dave Olsen (Javascript) and Chris Scharf (Ruby/Rails) of <a href="http://webservices.wvu.edu/" target="_blank">West Virginia University Web Services</a>

The project is now maintained by <a href="http://blog.bridgeutopiaweb.com" target="_blank">Katherine G. Pe</a>


## Inspired by


<a href="http://www.hakjoon.com/code/38/textile-quicktags-redirect" target="_blank">Patrick Woods</a> &
<a href="http://alexking.org/projects/js-quicktags" target="_blank">Alex King</a>


