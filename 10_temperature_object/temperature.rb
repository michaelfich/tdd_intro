class Temperature
  attr_accessor :f, :c

  def initialize(temperature)
    if temperature.has_key?(:f)
      @f = temperature[:f]
    end

    if temperature.has_key?(:c)
      @c = temperature[:c]
    end
  end

  def to_celsius
    @c ||= calculate_celsius(@f)
  end

  def to_fahrenheit
    @f ||= calculate_fahrenheit(@c)
  end

  def self.in_celsius(c)
    Temperature.new({:c => c})
  end

  def self.in_fahrenheit(f)
    Temperature.new({:f => f})
  end

  private

  def calculate_celsius(fahrenheit)
    celsius = (fahrenheit.to_i - 32) * (5.to_f / 9.to_f)
    celsius.round
  end

  def calculate_fahrenheit(celsius)
    fahrenheit = celsius.to_i / (5.to_f / 9.to_f) + 32
    fahrenheit.round
  end
end

class Celsius < Temperature
  def initialize(celsius)
    super({:c => celsius})
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super({:f => fahrenheit})
  end
end