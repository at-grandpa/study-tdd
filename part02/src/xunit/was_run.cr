class WasRun < TestCase
  getter was_run : Bool = false

  def test_method
    @was_run = true
  end
end
