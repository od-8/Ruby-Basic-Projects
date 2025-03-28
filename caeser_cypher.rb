# def to_ascii(input, key)
#   new_str = ''
#   input_arr = input.split('')
#   input_arr.each do |num|
#     if num.ord != 32 && num.ord > 64 && num.ord < 91 # Checks if the number is upercase in ascii values
#       num = ((((num.ord + key) + 65) % 26) + 65)
#       new_str += num.chr
#     end
#     if num.ord != 32 && num.ord > 96 && num.ord < 123 # Check if the number is lowercase in ascii values
#       num = (((num.ord - 97 + key) % 26) + 97)
#       new_str += num.chr
#     end
#     new_str += ' ' if num.ord == 32 # Adds a space cause 32 in ascii is space
#   end
#   puts "Your string '#{input}' in ascii is '#{new_str}'"
# end

# The above method was the original one I made close to when i started TOP
# When creating rspec tests for it i realized it didn't work for puncutation
# The new better code is below, could still be improved though

def to_ascii(input, key)
  input_arr = input.split('')
  output_arr = []
  input_arr.each do |char|
    if char.ord.between?(65, 90) #|| character.ord.between?(97, 122)
      output_arr << ((((char.ord + key) + 65) % 26) + 65).chr
    elsif char.ord.between?(97, 122)
      output_arr << (((char.ord - 97 + key) % 26) + 97).chr
    else
      output_arr << char.chr
    end
  end
  return output_arr.join('')
end