class Timer
  require 'time'
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    Time.at(@seconds).gmtime.strftime('%R:%S')
  end

  def padded(num)
    num = num.to_s
    num.length == 1 ? "0#{num}" : "#{num}"
  end

end
