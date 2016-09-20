class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end
  
  def time_string
    @time_string = ""
    if @seconds / 3600 < 10
      @time_string << "0" + (@seconds / 3600).to_s
    else
      @time_string << (@seconds / 3600).to_s
    end
    @time_string << ":"
    if (@seconds % 3600) / 60 < 10
      @time_string << "0" + ((@seconds % 3600) / 60).to_s
    else
      @time_string << ((@seconds % 3600) / 60).to_s
    end
    @time_string << ":"
    if (@seconds % 3600) % 60 < 10
      @time_string << "0" + ((@seconds % 3600) % 60).to_s
    else
      @time_string << ((@seconds % 3600) % 60).to_s
    end
    @time_string
  end
end
