require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  def test_running
    test = WasRun.new("test_method")
    test.was_run.should eq false
    test.run
    test.was_run.should eq true
  end
end

TestCaseTest.new("test_running").run
