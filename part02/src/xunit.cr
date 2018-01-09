require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  @test : WasRun = WasRun.new("")

  def setup
    @test = WasRun.new("test_method")
  end

  def test_running
    @test.run
    @test.was_run.should eq true
  end

  def test_setup
    @test.run
    @test.log.should eq "setUp testMethod "
  end
end

TestCaseTest.new("test_running").run
TestCaseTest.new("test_setup").run
