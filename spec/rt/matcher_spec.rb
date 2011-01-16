require 'spec_helper' 

describe Rt::Matcher do 
  context ".test_name" do 
    it "should replace blank with '_'" do 
      line = "test 'a b c' do"
      Rt::Matcher.should_receive(:match).with(line).and_return("a b c") 
      Rt::Matcher.test_name(line).should == "a_b_c"
    end
  end
end
