class TestSuite
  @tests : Array(WasRun) = [] of WasRun

  def add(test)
    @tests << test
  end

  def run(result)
    @tests.each do |test|
      test.run(result)
    end
  end
end
