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

puts caesar_cipher("What a string!", 5)