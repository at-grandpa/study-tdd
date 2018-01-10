class TestSuite
  @tests : Array(TestCase) = [] of TestCase

  def add(test)
    @tests << test
  end

  def run(result)
    @tests.each do |test|
      test.run(result)
    end
  end
end
