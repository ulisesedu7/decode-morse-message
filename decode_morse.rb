#Morse Code Dictionary Storage
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

# Decode a specific letter
def decode_char (let)
  @morse_code_dictionary[let]
end

# Decode a word
def decode_word (word)
  letters = word.split.map {
    |let| decode_char(let)
  }
  letters.join
end

# Decode a full sentence
def decode_sentence(sentence)
  words = sentence.split(' ').map {
    |word| decode_word(word)
  }
  decoded_sentence = words.join(' ')
end

# Challange to decode the word
complete_sentence = decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...').downcase

puts complete_sentence
