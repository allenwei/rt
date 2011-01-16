Given /^a test file "(.*)" with:$/ do |filename, content|
  Given "a file named \"#{filename}\" with:", <<-EOF
    require 'test/unit'

    class #{camelize(File.basename(filename,'.rb'))} < Test::Unit::TestCase  
      #{content}
    end
  EOF
end
