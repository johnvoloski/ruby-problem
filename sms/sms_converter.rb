class SmsConverter
  ALPHABET = { 'a' => 2, 'b' => 22, 'c' => 222,
               'd' => 3, 'e' => 33, 'f' => 333,
               'g' => 4, 'h' => 44, 'i' => 444,
               'j' => 5, 'k' => 55, 'l' => 555,
               'm' => 6, 'n' => 66, 'o' => 666,
               'p' => 7, 'q' => 77, 'r' => 777, 's' => 7777,
               't' => 8, 'u' => 88, 'v' => 888,
               'w' => 9, 'x' => 99, 'y' => 999, 'z' => 9999, ' ' => 0 }

  def self.parse(phrase)
    converted = ''
    phrase = phrase[0..254]

    phrase.each_char do |letter|
      code = ALPHABET[letter.downcase].to_s
      converted << '_' if converted[-1].to_s == code[0].to_s
      converted << code
    end

    converted
  end
end
