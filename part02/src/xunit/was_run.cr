class WasRun < TestCase
  getter log : String = ""

  def setup
    @log = "setUp "
  end

  def test_method
    @log += "testMethod "
  end

  def teardown
    @log += "tearDown "
  end
end
