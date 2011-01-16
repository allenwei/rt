require 'spec_helper' 

describe Rt::ActiveSupportTestCase do

  context ".match" do 
    it "should match test with double quote" do  
      Rt::ActiveSupportTestCase.match(%Q{test "test_one" do}).should == "test_one"
    end

    it "should match test with double quote and blank at begining" do  
      Rt::ActiveSupportTestCase.match(%Q{   test "test_one" do}).should == "test_one"
    end

    it "should match test with double quote and blank after 'test'" do  
      Rt::ActiveSupportTestCase.match(%Q{   test    "test_one" do}).should == "test_one"
    end

    it "should match test with double quote and blank after 'test' before do " do  
      Rt::ActiveSupportTestCase.match(%Q{   test    "test_one" do}).should == "test_one"
    end

    it "should match test with double quote and blank after 'test' after do " do  
      Rt::ActiveSupportTestCase.match(%Q{   test    "test_one" do}).should == "test_one"
    end

    it "should not match is not a test" do  
      Rt::ActiveSupportTestCase.match(%Q{test1    "test_one" do}).should be_nil
    end

    it "should match test with single qoute" do 
      Rt::ActiveSupportTestCase.match(%Q{test 'test_one' do}).should == "test_one"
    end
  end
end

