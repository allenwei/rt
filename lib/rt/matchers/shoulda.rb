module Rt
  module Matchers
    class Shoulda < Rt::Matcher
      def self.match(arg) 
        return arg[/\s*[should|context]+\s+["']+(.*)["']+\s+do/,1]
      end

      def self.test_name(line) 
        return self.match(line)
      end
    end 
  end
end

