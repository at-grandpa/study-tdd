class WasRun
  getter was_run : Bool = false

  def initialize(@name : String)
  end

  def run
    {% begin %}
      case @name
        {% for method, index in @type.methods.map(&.name) %}
          when {{method.stringify}} then {{method.id}}
        {% end %}
      else
        raise "Undefined method. You specified: #{@name}"
      end
    {% end %}
  end

  def test_method
    @was_run = true
  end
end
