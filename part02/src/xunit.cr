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

  def test_failed_result_formatting
    result = TestResult.new
    result.test_started
    result.test_failed
    result.summary.should eq "1 run, 1 failed"
  end

  def test_suite
    suite = TestSuite.new
    suite.add(WasRun.new("test_method"))
    suite.add(WasRun.new("test_broken_method"))
    result = suite.run
    result.summary.should eq "2 run, 1 failed"
  end
end

puts TestCaseTest.new("test_template_method").run.summary
puts TestCaseTest.new("test_result").run.summary
puts TestCaseTest.new("test_failed_result").run.summary
puts TestCaseTest.new("test_failed_result_formatting").run.summary
puts TestCaseTest.new("test_suite").run.summary
