def caesar_cipher(input_string, num_shift)
  alpha_lower = ("a".."z").to_a
  alpha_upper = ("A".."Z").to_a
  output_string = ""
  input_string.each_char do |char|
    if alpha_lower.include?(char) #check if lower case
      current_alpha_index = alpha_lower.index(char)
      new_alpha_index = (current_alpha_index + num_shift) % 26
      new_char = alpha_lower[new_alpha_index]
    elsif alpha_upper.include?(char) #check if upper case
      current_alpha_index = alpha_upper.index(char)
      new_alpha_index = (current_alpha_index + num_shift) % 26
      new_char = alpha_upper[new_alpha_index]
    else
      new_char = char
    end
    output_string += new_char
  end
  output_string
end

p caesar_cipher("What a string!", 50)