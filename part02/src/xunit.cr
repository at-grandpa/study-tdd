require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  @test : WasRun = WasRun.new("")

  def test_template_method
    @test = WasRun.new("test_method")
    @test.run
    @test.log.should eq "setUp testMethod tearDown"
  end
end

TestCaseTest.new("test_template_method").run
