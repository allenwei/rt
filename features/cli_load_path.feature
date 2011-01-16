Feature: Load path when running test 

  Scenario: default load path is "test" folder 
    Given a file named "test/test_helper.rb" with: 
      """
      puts 'load test_helper' 
      """
    And a test file "test_one.rb" with: 
      """ 
      require 'test_helper' 

      def test_one 
        assert true
      end
      """
      When I run "bundle exec rt test_one.rb" 
      Then the stdout should contain "load test_helper"
      And the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
      And the exit status should be 0 
