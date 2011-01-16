Feature: run single test according to line number

  Scenario: Support ActiveSupport::TestCase 
    Given a file named "test_one.rb" with: 
    """ 
    require 'test/unit'
    require 'active_support/test_case'

    class TestOne < ActiveSupport::TestCase
    test "test one" do 
    assert true
    end

    test 'test two' do 
    assert true
    end
    end
    """
    When I successfully run "bundle exec rt test_one.rb:5" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
    When I successfully run "bundle exec rt test_one.rb:9" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"

  Scenario: Support shoulda should method
    Given a file named "test_one.rb" with: 
    """ 
    require 'test/unit'
    require 'active_support/test_case'
    require 'shoulda'

    class TestOne < ActiveSupport::TestCase
      should "test one" do 
        assert true
      end

      should 'test two' do 
        assert true
      end
    end
    """
    When I successfully run "bundle exec rt test_one.rb:6" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
    When I successfully run "bundle exec rt test_one.rb:10" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"

  Scenario: Support shoulda should method
    Given a file named "test_one.rb" with: 
    """ 
    require 'test/unit'
    require 'active_support/test_case'
    require 'shoulda'

    class TestOne < ActiveSupport::TestCase
      context "a context" do 
        should "test one" do 
          assert true
        end
      end

      should 'test two' do 
        assert true
      end
    end
    """
    When I successfully run "bundle exec rt test_one.rb:6" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"
    When I successfully run "bundle exec rt test_one.rb:12" 
    Then the stdout should contain "1 tests, 1 assertions, 0 failures, 0 errors"



  Scenario: get warning can not find test if can not find test in spacified line 
    Given a file named "test_one.rb" with: 
    """ 
    require 'test/unit'
    require 'active_support/test_case'

    class TestOne < ActiveSupport::TestCase
    test "test one" do 
    assert true
    end
    end
    """
    When I run "bundle exec rt test_one.rb:1" 
    Then the stderr should contain "Can not find test in file test_one.rb line 1"
    And the exit status should be 1


