class WasRun < TestCase
  getter was_run : Bool = false
  getter log : String = ""

  def setup
    @log = "setUp "
  end

  def test_method
    @was_run = true
  end
end
