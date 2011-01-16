module Rt
  module Matchers
    class UnitTest < Rt::Matcher 
      def self.match(arg) 
        return arg[/\s*def\s+(test\S+)\s*/,1]
      end
    end 
  end
end


