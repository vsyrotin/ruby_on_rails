class Temperature

  attr_accessor :f, :c
  #part 1


  def initialize(option = nil)
    option = {
        f: nil,
        c: nil,
    }.merge(option || {})

    @f = option[:f]
    @c = option[:c]

  end


  def in_fahrenheit
    if @c
      @c * 9.0/5.0 + 32.0
    else
      @f
    end
  end

  def in_celsius
    if @f
      (@f - 32.0) * 5.0/9.0
    else
      @c
    end
  end

  #part 2

  def self.from_celsius(deg)
    new(:c => deg)
  end

    def self.from_fahrenheit(deg)
    new(:f => deg)
  end
end

  #part 3

class Celsius < Temperature
  def initialize(deg)
    super(:c => deg)
  end
end


class Fahrenheit < Temperature
  def initialize(deg)
    super(:f => deg)
  end
end
