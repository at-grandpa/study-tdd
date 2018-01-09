class WasRun < TestCase
  getter was_run : Bool = false
  getter was_setup : Bool = false

  def setup
    @was_setup = true
  end

  def test_method
    @was_run = true
  end
end
