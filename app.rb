def decode_char(morse)
  morse_map = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
                '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
                '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
                '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
                '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0' }

  morse_map[morse] || ''
end

def decode_word(code)
  codes = code.split

  res = ''
  codes.each do |c|
    decoded_char = decode_char(c)
    res += decoded_char if decoded_char
  end

  res
end

def decode_message(code)
  words = code.split('')

  res = ''
  words.each do |w|
    decoded_word = decode_word(w)
    res += "#{decoded_word} " if decoded_word
  end

  res.strip
end
