# Ceasar Cipher
def cipher(input_string, shift)
  #Invalid input check
  unless input_string.is_a?(String)
    puts "Invalid string"
    return    
  end  
      
  unless shift.is_a?(Integer)
    puts "Invalid shift"
    return
  end

  shift = shift % 26
# Calulates result
  result = input_string.chars.map do |char|
    if char.match?(/[a-z]/)
      base = "a".ord
      ((char.ord - base + shift )% 26 + base).chr
    
    elsif char.match?(/[A-Z]/)
      base = "A".ord
      ((char.ord - base + shift )% 26 + base).chr
    
    else # Non-letter characters
      char
    end
  end

  result.join
end

puts cipher("String",10)
puts cipher("TEST!!!! TEST", 40)