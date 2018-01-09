require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  def test_running
    test = WasRun.new("test_method")
    test.run
    test.was_run.should eq true
  end

  def test_setup
    # runをしたらsetupが呼ばれていることを検証している
    test = WasRun.new("test_method")
    test.run
    test.was_setup.should eq true
  end
end

TestCaseTest.new("test_running").run
TestCaseTest.new("test_setup").run
