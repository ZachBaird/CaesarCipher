# frozen_string_literal: true

require './lib/caesar_cipher.rb'

describe 'caesar cipher' do
  before { @cipher = CaesarCipher.new }

  context 'valid input' do
    it 'works with What a string! and 5' do
      expect(@cipher.caesar_cipher('What a string!', 5)).to eq 'bmfy f xywnsl!'
    end

    it 'works with Hello World! and 7' do
      expect(@cipher.caesar_cipher('Hello World!', 7)).to eq 'olssv dvysk!'
    end

    it 'works with Hey, my name is Zach. and 1' do
      expect(@cipher.caesar_cipher('Hey, my name is Zach.', 1)).to eq 'ifz, nz obnf jt abdi.'
    end

    it 'works with Hi and -2' do
      expect(@cipher.caesar_cipher('Hi', -2)).to eq 'fg'
    end
  end

  context 'invalid input' do
    it 'fails with number' do
      expect(@cipher.caesar_cipher(2, 1)).to eq ''
    end

    it 'fails with boolean' do
      expect(@cipher.caesar_cipher(true, 5)).to eq ''
    end
  end
end
