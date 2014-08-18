# Changelog

## Version 0.0.30

### Textile Editor Helper now supports simple_form and formtastic

* Removed options for simple and extended
* Removed preview options. The wiki pages will be updated to show different ways to have a preview feature
* Refactored the helpers and tests
* Added support for simple_form. fixes <a href="https://github.com/bridgeutopia/textile_editor_helper/issues/2" target="_blank">#2</a>
* Added support for formtastic. fixes  <a href="https://github.com/bridgeutopia/textile_editor_helper/issues/4" target="_blank">#4</a>
* Fixed some generator bugs.
* Refactored tests and helpers to make sure there is no duplicated coda
* Load and require simple_form and formtastic helpers and dependencies only when the gems are found.

## Version 0.1.2

* Rails 3.2 is no longer supported. But people can use the older version of the gem.
* Rails 4.1.4 or greater is supported.
* Updated Cucumber tests.
* Consistently use Asset pipeline as images previously used the public dir.
* There are no known issues after dependency upgrades. The gem works for simple_form and formtastic.
* Ruby 1.8 is no longer supported.
