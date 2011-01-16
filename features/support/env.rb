require 'aruba/cucumber'

module Rt::World 
  def camelize(str)
    str.to_s.gsub(/\/(.?)/) { "::#{$1.upcase}" }.gsub(/(?:^|_)(.)/) { $1.upcase }
  end
end

World(Rt::World)
