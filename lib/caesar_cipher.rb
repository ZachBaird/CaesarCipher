# Object encompassing the caesar cipher logic
class CaesarCipher
  def initialize; end

  def caesar_cipher(string_to_encrypt, shift_factor)
    return '' if [true, false].include? string_to_encrypt
    return '' if string_to_encrypt.is_a? Integer

    alphabet = ('a'..'z').to_a

    result = string_to_encrypt.chars.map do |letter|
      letter.downcase!

      index_after_shift = alphabet.index(letter) + shift_factor if alphabet.include? letter

      if (alphabet.include? letter) && (index_after_shift < alphabet.length)
        alphabet[index_after_shift]
      elsif (alphabet.include? letter) && (index_after_shift >= alphabet.length)
        alphabet[index_after_shift - alphabet.length]
      else
        letter
      end
    end

    result.join
  end
end
