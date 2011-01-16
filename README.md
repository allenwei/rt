rt
========

A unit test runner 

Support run by file number 
Support run by file path pattern 
Support run by file line number 


Support different format (In development)


Installation 
-------

  gem install rt


Usage
-----

  `rt test_file.rb`

  `rt test/**/test_*.rb`  

Support specify line number:

  `rt test_file.rb:5` 


Load Path
--------
automatic add "./test" to load path, so you don't need "-Itest" option


Roadmap
=========

* Support red green
* Support Formatter  
* Support Rspec compatible Formatter
* Support growl notify
* Support tag
