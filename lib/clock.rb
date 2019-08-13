# clock.rb

def make_two_digits(num)
  string_num = num.to_s
  if string_num.length == 2
    return string_num
  else
    return "0" + string_num
  end
end

def clock(hours, minutes, seconds)
  time_fields = [hours, minutes, seconds]
  max_values = [24, 60, 60]
  
  time_fields.each_with_index do |field, index|
    if field >= max_values[index]
      raise ArgumentError.new("#{field} is too large.")
    elsif field < 0
      raise ArgumentError.new("#{field} is invalid (negative)")
    end
  end
  
  format_hours = make_two_digits(hours)
  format_minutes = make_two_digits(minutes)
  format_seconds = make_two_digits(seconds)
  
  return "#{format_hours}:#{format_minutes}:#{format_seconds}"
end
