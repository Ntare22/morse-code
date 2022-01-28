def decode_char(char)
  @morse_to_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
  }
  @res = @morse_to_char[char]
  if @res.nil?
    ' '
  else
    @res
  end
end

def decoded_char(word)
  @morse_to_char[word]
end

def decode_word(word)
  word = word.split
  res = ''
  word.each do |char|
    res += decode_char(char)
  end
  res
end

def decode(message)
  message = message.split('   ')
  res = []
  message.each do |char|
    res.push(decode_word(char))
  end
  res.join(' ')
end

puts decode_char('.-')
puts decode_word('-.- .. --')
puts decode('-.. .- -  -.. --- --.')
