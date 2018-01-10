class TestCase
  def initialize(@name : String)
  end

  def setup
  end

  def run(result)
    result.test_started
    setup
    begin
      {% begin %}
        {% method_names = @type.methods.map(&.name).reject(&.==("run".id)) %}
        {% unless method_names.empty? %}
          case @name
            {% for method, index in @type.methods.map(&.name).reject(&.==("run".id)) %}
              when {{method.stringify}} then {{method.id}}
            {% end %}
          else
            raise "Undefined method. You specified: #{@name}"
          end
        {% end %}
      {% end %}
    rescue e
      result.test_failed
    end
    teardown
  end

  def teardown
  end
end
