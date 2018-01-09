class TestCase
  def initialize(@name : String)
  end

  def setup
  end

  def run
    setup
    {% begin %}
      case @name
        {% for method, index in @type.methods.map(&.name) %}
          when {{method.stringify}} then {{method.id}}
        {% end %}
      else
        raise "Undefined method. You specified: #{@name}"
      end
    {% end %}
    teardown
    TestResult.new
  end

  def teardown
  end
end
