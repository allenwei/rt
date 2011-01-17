Feature: Load path when running test 

  Scenario: default load path is "test" folder 
    Given a file named "test/test_helper.rb" with: 
      """
      #no thing
      """
    And a test file "test_one.rb" with: 
      """ 
      require 'test_helper' 

      def test_one 
        assert true
      end
      """
      When I successfully run "bundle exec rt test_one.rb" 
      Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
