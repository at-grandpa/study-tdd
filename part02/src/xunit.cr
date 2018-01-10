require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  @test : WasRun = WasRun.new("")

  def test_template_method
    @test = WasRun.new("test_method")
    result = TestResult.new
    @test.run(result)
    @test.log.should eq "setUp testMethod tearDown "
  end

  def test_result
    @test = WasRun.new("test_method")
    result = TestResult.new
    @test.run(result)
    result.summary.should eq "1 run, 0 failed"
  end

  def test_failed_result
    @test = WasRun.new("test_broken_method")
    result = TestResult.new
    @test.run(result)
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
    result = TestResult.new
    suite.run(result)
    result.summary.should eq "2 run, 1 failed"
  end
end

suite = TestSuite.new
suite.add(TestCaseTest.new("test_template_method"))
suite.add(TestCaseTest.new("test_result"))
suite.add(TestCaseTest.new("test_failed_result"))
suite.add(TestCaseTest.new("test_failed_result_formatting"))
suite.add(TestCaseTest.new("test_suite"))
result = TestResult.new
suite.run(result)
puts result.summary
