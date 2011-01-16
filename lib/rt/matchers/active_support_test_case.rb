module Rt
  module Matchers
    class ActiveSupportTestCase < Rt::Matcher 
      def self.match(arg) 
        return arg[/\s*test\s+["']+(.*)["']+\s+do/,1]
      end
    end 
  end
end
