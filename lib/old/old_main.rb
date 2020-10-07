# frozen_string_literal: true

# Dev: Zach Baird
# Objective:
# This method takes in a string, and changes each character in the string
#   down the alphabet by whatever number is passed as the shift_factor.

def caesar_cipher(string_to_encrypt, shift_factor)
  alphabet = ('a'..'z').to_a

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

result = caesar_cipher('Hello Blargity', 5)
#result = caesar_cipher('aah', -1)
puts result
