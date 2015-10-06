require 'inject'

describe Array do

  context 'without arguments' do
    it 'can add' do
      expect([1,2,3,4].inject { |memo, ele | memo + ele}).to eq 10
      expect([1,2,3,4].my_inject { |memo, ele | memo + ele}).to eq 10
    end

    it 'can subtract' do
      expect([1,2,3,4].inject { |memo, ele | memo - ele}).to eq (-8)
      expect([1,2,3,4].my_inject { |memo, ele | memo - ele}).to eq (-8)
    end

    it 'can multiply' do
      expect([1,2,3,4].inject { |memo, ele | memo * ele}).to eq 24
      expect([1,2,3,4].my_inject { |memo, ele | memo * ele}).to eq 24
    end

    it 'can divide' do
      expect([1,2,3,4].inject { |memo, ele | memo / ele}).to eq 0
      expect([1,2,3,4].my_inject { |memo, ele | memo / ele}).to eq 0
    end
  end

  context 'with arguments' do

    it 'can add' do
      expect([1,2,3,4].inject(10) { |memo, ele | memo + ele}).to eq 20
    end

    it 'can subtract' do
      expect([1,2,3,4].inject(10) { |memo, ele | memo - ele}).to eq 0
    end

    it 'can multiply' do
      expect([1,2,3,4].inject(10) { |memo, ele | memo * ele}).to eq 240
    end

    it 'can divide' do
      expect([1,2,3,4].inject(10) { |memo, ele | memo / ele}).to eq 0
    end
  end

  context 'with a symbol' do

    it 'can add' do
      expect([1,2,3,4].inject(:+)).to eq 10
    end

    it 'can subtract' do
      expect([1,2,3,4].inject(:-)).to eq (-8)
    end

    it 'can multiply' do
      expect([1,2,3,4].inject(:*)).to eq 24
    end

    it 'can divide' do
      expect([1,2,3,4].inject(:/)).to eq 0
    end
  end

  context 'with an argumant and a symbol' do

    it 'can add' do
      expect([1,2,3,4].inject(10, :+)).to eq 20
    end

    it 'can subtract' do
      expect([1,2,3,4].inject(10, :-)).to eq 0
    end

    it 'can multiply' do
      expect([1,2,3,4].inject(10, :*)).to eq 240
    end

    it 'can divide' do
      expect([2,2,2,2].inject(100, :/)).to eq 6
    end
  end

  context 'with strings' do
    it 'can add' do
      expect(%w(a b c d).inject { |memo, ele| memo + ' ' + ele }).to eq 'a b c d'
    end
  end
end
