# Changelog

## Version 0.0.23

### Textile Editor Helper now supports simple_form and formtastic

* Removed options for simple and extended
* Removed preview options. The wiki pages will be updated to show different ways to have a preview feature
* Refactored the helpers and tests
* Added support for simple_form. fixes <a href="https://github.com/bridgeutopia/textile_editor_helper/issues/2" target="_blank">#2</a>
* Added support for formtastic. fixes  <a href="https://github.com/bridgeutopia/textile_editor_helper/issues/4" target="_blank">#4</a>
* Fixed some generator bugs.
* Load and require simple_form and formtastic helpers and dependencies only when the gems are found.
