require 'spec_helper'

describe Rt::Matchers::UnitTest do 
  context ".match" do
    it "should match def" do 
      Rt::Matchers::UnitTest.match("def test_a_b_c").should == "test_a_b_c"
    end

    it "should match def with extra blank" do 
      Rt::Matchers::UnitTest.match(" def   test_a_b_c  ").should == "test_a_b_c"
    end

    it "should only match method name start with 'test'" do 
      Rt::Matchers::UnitTest.match(" def   a_b_c  ").should be_nil
    end
  end
end
