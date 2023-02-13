def caesar_cipher(text, shift)
  #Convert text into an array of Chars
  textArray = text.split('')

  #Get the real shift
  realShift = shift
  if shift < 0
    realShift = 26 - shift
  end
  while realShift > 25
    realShift = realShift - 26
  end
  
  #Shift the Chars
  resultArray = textArray.map do |char|
    if char.between?('a', 'z')
      if (char.ord + realShift).chr <= 'z'
        newChar = (char.ord + realShift).chr
      else
        newChar = (char.ord + realShift - 26).chr
      end
    elsif char.between?('A', 'Z')
      if (char.ord + realShift).chr <= 'Z'
        newChar = (char.ord + realShift).chr
      else
        newChar = (char.ord + realShift - 26).chr
      end
    else
      newChar = char
    end
  end
  resultArray.join('')
end


keepGoing = true
while keepGoing
  puts "What's your text to encode?"
  textToEncode = gets.chomp
  puts "What is your key?"
  key = gets.chomp.to_i
  encodedText = caesar_cipher(textToEncode, key)
  puts ''
  puts "Encoded text: #{encodedText}"
  puts "Do you want to keep going? Enter q to quit."
  input = gets.chomp
  if input == 'q'
    keepGoing = false
  else
    puts '---------------------------'
  end
end
