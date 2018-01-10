class TestCase
  def initialize(@name : String)
  end

  def setup
  end

  def run
    result = TestResult.new
    result.test_started
    setup
    begin
      {% begin %}
        case @name
          {% for method, index in @type.methods.map(&.name) %}
            when {{method.stringify}} then {{method.id}}
          {% end %}
        else
          raise "Undefined method. You specified: #{@name}"
        end
      {% end %}
    rescue e
      result.test_failed
    end
    teardown
    result
  end

  def teardown
  end
end
