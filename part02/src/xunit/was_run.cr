class WasRun < TestCase
  getter log : String = ""

  def setup
    @log = "setUp "
  end

  def test_method
    @log += "testMethod "
  end

  def test_broken_method
    raise Exception.new
  end

  def teardown
    @log += "tearDown "
  end
end
