require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  @test : WasRun = WasRun.new("")

  def test_template_method
    @test = WasRun.new("test_method")
    @test.run
    @test.log.should eq "setUp testMethod tearDown "
  end

  def test_result
    @test = WasRun.new("test_method")
    result = @test.run
    result.summary.should eq "1 run, 0 failed"
  end

  def test_failed_result
    @test = WasRun.new("test_broken_method")
    result = @test.run
    result.summary.should eq "1 run, 1 failed"
  end
end

TestCaseTest.new("test_template_method").run
TestCaseTest.new("test_result").run
TestCaseTest.new("test_failed_result").run
