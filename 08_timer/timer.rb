class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds

    if seconds == 0
      minutes = 0
      hours = 0
    else
      minutes = seconds / 60
      seconds = seconds - (minutes * 60)

      hours = minutes / 60
      minutes = minutes - (hours * 60)
    end

    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(val)
    time = val.to_s
    time.rjust(2, "0")
  end

end
