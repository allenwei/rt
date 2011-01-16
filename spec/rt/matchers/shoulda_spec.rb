require 'spec_helper' 

describe Rt::Matchers::Shoulda  do 
  context ".match" do 
    it "should match line with should in double qoute" do 
      Rt::Matchers::Shoulda.match(%q{should "test one" do}).should == "test one"
    end

    it "should match line with should in single quote" do 
      Rt::Matchers::Shoulda.match(%q{should 'test one' do}).should == "test one"
    end
    
    it "should match line with context in double qoute" do 
      Rt::Matchers::Shoulda.match(%q{context "test one" do}).should == "test one"
    end

    it "should match line with context in single qoute" do 
      Rt::Matchers::Shoulda.match(%q{context 'test one' do}).should == "test one"
    end
  end
end

