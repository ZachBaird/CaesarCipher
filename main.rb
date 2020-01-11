def caesar_cipher(string_to_encrypt, shift_factor)
  alphabet = ("a".."z").to_a
  
  encrypted_message = string_to_encrypt.chars.map do |letter|
    is_uppercase = false

    if letter.upcase == letter
      is_uppercase = true
      letter.downcase!
    end

    if alphabet.include?(letter)
      letter = alphabet[(alphabet.index(letter) + shift_factor)]
      is_uppercase ? letter.upcase! : letter
    end
  end

  encrypted_message.join
end

result = caesar_cipher("Hello", 5)
result = caesar_cipher("aah", -1)
puts result