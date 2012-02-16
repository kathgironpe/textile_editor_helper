Textile Editor Helper 
==========================

Textile Editor Helper is a plugin for Ruby on Rails to add a Textile toolbar above textareas
	
This version of Textile Editor Helper is a fork of the code found at http://svn.webtest.wvu.edu/repos/rails/plugins/textile_editor_helper/ to allow for use with the form_for method. 

Dependency
----------

To use Textile Editor Helper you must be using either the jQuery JavaScript library. 

jQuery is required and make sure $(document).ready() method is called. Prototype is no longer supported. 

For Rails 3.2, vendor/plugins was removed that is why this gem exists.

Travis CI Build Status
-----------------------

[![Build Status](https://secure.travis-ci.org/bridgeutopia/textile_editor_helper.png)](http://travis-ci.org/bridgeutopia/textile_editor_helper)


To use Textile Editor Helper
----------------------------

Directions to get the helper up and running for your install:

First, you'll need to add the gems required. RedCloth and htmlentities are for the preview feature. 

`gem 'textile_editor_helper'`

`gem 'RedCloth'`

`gem 'htmlentities'`

and do

`rails g textile_editor_helper:install`

To use the Textile-Editor-Helper with a specific text area, you can choose between the following options:

    <%= f.textile_editor :description %>

    <%= textile_editor :user, "website" %>

    <%= textile_editor_tag 'description', :description %>

**Just like writing a text area tag!**

At the end of your form put in the following code:

    <%= textile_editor_initialize %> **Important!**


Then, just save your view and check it out


Simple vs. Extended
===================

TEH has a built-in mode to show only a sub-selection of available tags called simple. 

Currently the _simple_ tags are: _bold_, _underline_, _italic_, _strikethrough_.

To create a text area that will only use the 'simple' tags create your text area with the following code:

    <%= textile_editor 'object', 'field', :simple=>true -%>

or
		
	 <%= f.textile_editor :body, :simple=>true %>


To Modify Textile Editor Helper
-------------------------------

Most of the options that you might want to modify (e.g. access keystroke or whether a tag is available in simple) are found in textile_editor_config.js. Pretty straightforward.

TESTING (Cucumber is required)
--------------------
bundle exec rake

TEH Preview
--------------------
Recently added a preview feature. To use: 

		<%= f.textile_editor :body, :preview=>true %>
		
    <%= textile_editor_initialize :preview=>true %> 

This is shown in detail on the wiki page. Check it out. 

Styling TEH Preview
--------------------
Add this to your CSS file and modify as needed: 

		.textile-preview {
			width:83%;
		  padding:20px;
		  margin:10px 0px;
		  border:5px dotted #eee;
		  display:block;
		}


More Info on Textile
--------------------

To learn more about Textile check out: Textism, http://www.textism.com/tools/textile/index.php & Textile Reference, http://hobix.com/textile/


More Info on Slate
------------------

slate is the CMS in development at West Virginia University that led to the development of Textile Editor Helper. Learn more at: http://slateinfo.blogs.wvu.edu


License
-------
Textile Editor Helper is released under the MIT license.


Credits
-------

Textile Editor Helper was created by Dave Olsen (Javascript) and Chris Scharf (Ruby/Rails) of West Virginia University Web Services (http://webservices.wvu.edu/)

The project is now, unofficially maintained by Nicolás Hock 

Inspired by
-----------

Patrick Woods, http://www.hakjoon.com/code/38/textile-quicktags-redirect & 
Alex King, http://alexking.org/projects/js-quicktags
