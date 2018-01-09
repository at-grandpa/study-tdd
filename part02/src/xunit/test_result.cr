class TestResult
  property run_count : Int32 = 0

  def test_started
    @run_count += 1
  end

  def summary
    "%d run, 0 failed" % [@run_count]
  end
end
