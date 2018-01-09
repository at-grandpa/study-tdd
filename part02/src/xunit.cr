require "./xunit/*"

module Xunit
end

test = WasRun.new("test_method")
p test.was_run
test.test_method
p test.was_run