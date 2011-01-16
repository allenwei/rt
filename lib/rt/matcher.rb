module Rt
  class Matcher 
    def self.match(arg)
      raise "Not implement"
    end

    def self.test_name(line) 
      if match = self.match(line) 
        return match.gsub!(/\s+/,"_")
      end
      return nil
    end
  end
end
