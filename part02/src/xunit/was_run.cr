class WasRun < TestCase
  getter was_run : Bool = false
  getter was_setup : Bool = false
  getter log : String = ""

  def setup
    @was_setup = true
    @log = "setUp "
  end

  def test_method
    @was_run = true
  end
end
