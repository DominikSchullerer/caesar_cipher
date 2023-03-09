def caesar_cipher(text, shift)
  # Convert text into an array of Chars
  text_array = text.downcase.chars

  # Get the real shift
  real_shift = shift
  if shift < 0
    real_shift = 26 + shift
  end
  while real_shift > 25
    real_shift -= 26
  end

  # Shift the Chars
  result_array = text_array.map do |char|
    if char.between?("a", "z")
      if (char.ord + real_shift).chr <= "z"
        (char.ord + real_shift).chr
      else
        (char.ord + real_shift - 26).chr
      end
    else
      char
    end
  end
  result_array.join("")
end

def main
  keep_going = true
  while keep_going
    puts "What's your text to encode?"
    text_to_encode = gets.chomp
    puts "What is your key?"
    key = gets.chomp.to_i
    encoded_text = caesar_cipher(text_to_encode, key)
    puts ""
    puts "Encoded text: #{encoded_text}"
    puts "Do you want to keep going? Enter q to quit."
    input = gets.chomp
    if input == "q"
      keep_going = false
    else
      puts "---------------------------"
    end
  end
end
