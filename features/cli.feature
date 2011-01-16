Feature: Runner 

  Background:
    Given a test file "test/test_one.rb" with:
      """
        def test_one  
          assert true
        end
      """
    And a test file "test/test_two.rb" with:
      """
        def test_two
          assert true
        end
      """

  Scenario: Run single file from command-line 
    When I run "bundle exec rt test/test_one.rb" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
    And the exit status should be 0 

  Scenario: Run two file from command-line 
    When I run "bundle exec rt test/test_one.rb test/test_two.rb" 
    Then the stdout should contain "2 tests, 2 assertions, 0 failures, 0 errors"
    And the exit status should be 0 

  Scenario: Run tests in folder
    When I run "bundle exec rt test" 
    Then the stdout should contain "2 tests, 2 assertions, 0 failures, 0 errors"
    And the exit status should be 0 

  Scenario: Run tests with regular expression
    When I run "bundle exec rt **/*_one.rb" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
    And the exit status should be 0 

