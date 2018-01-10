class TestSuite
  @tests : Array(WasRun) = [] of WasRun

  def add(test)
    @tests << test
  end
end
