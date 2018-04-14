katz_deli = []

def line(deli_line)
  current_line = ""
  if deli_line.empty?
    current_line << "The line is currently empty."
  else
    current_line << "The line is currently:"
    deli_line.each_with_index do |name, index|
      position = index + 1
      current_line << " #{position}. #{name}"
    end
  end
  puts current_line
end

def take_a_number(deli_line, name)
  deli_line << name
  puts "Welcome, #{name}. You are number #{deli_line.length} in line."
end

def now_serving(deli_line)
  if deli_line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.first}."
    deli_line.shift
  end
end