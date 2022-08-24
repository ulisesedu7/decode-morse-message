#
@morse_code_dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char (let)
  @morse_code_dictionary[let]
end

def decode_word (word)
  letters = word.split.map {
    |let| decode_char(let)
  }
  letters.join
end

def decode_sentence(sentence)
  words = sentence.split(' ').map {
    |word| decode_word(word)
  }
  decoded_sentence = words.join(' ')
end

complete_sentence = decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...').downcase

puts complete_sentence
