class TestResult
  property run_count : Int32 = 0
  property error_count : Int32 = 0

  def test_started
    @run_count += 1
  end

  def test_failed
    @error_count += 1
  end

  def summary
    "%d run, %d failed" % [@run_count, @error_count]
  end
end
