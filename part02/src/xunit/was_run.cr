class WasRun
  getter was_run : Bool = false

  def initialize(@name : String)
  end

  def run
    test_method
  end

  def test_method
    @was_run = true
  end
end
