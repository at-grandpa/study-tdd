class TestSuite
  @tests : Array(WasRun) = [] of WasRun

  def add(test)
    @tests << test
  end

  def run
    result = TestResult.new
    @tests.each do |test|
      test.run(result)
    end
    result
  end
end
