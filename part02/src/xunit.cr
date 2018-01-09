require "./xunit/*"
require "spec/expectations"
require "spec/methods"
require "spec/dsl"

class TestCaseTest < TestCase
  @test : WasRun = WasRun.new("")

  def setup
    @test = WasRun.new("test_method")
  end

  def test_template_method
    @test.run
    @test.log.should eq "setUp testMethod "
  end
end

TestCaseTest.new("test_template_method").run
