require 'fizzbuzz'

describe 'FizzBuzz' do

  describe 'Fizz when multiple of 3' do
    (3..21).step(3) do |num|
      next if num % 15 == 0
      it "Fizz when #{num}" do
        expect(fizzbuzz(num)).to eq 'Fizz'
      end
    end
  end

  describe 'Buzz when multiple of 5' do
    (5..40).step(5) do |num|
      next if num % 15 == 0
      it "Buzz when #{num}" do
        expect(fizzbuzz(num)).to eq 'Buzz'
      end
    end
  end

  describe 'FizzBuzz when multiple of 3 and 5' do
    (15..90).step(15) do |num|
      it "FizzBuzz when #{num}" do
        expect(fizzbuzz(num)).to eq 'FizzBuzz'
      end
    end
  end

  describe 'NOT multiple of 3 or 5' do
    it '0 when 0' do
      expect(fizzbuzz(0)).to eq 0
    end
    (1..10).to_a.each do |num|
      next if num % 3 == 0 or num % 5 == 0
      it "self when #{num}" do
        expect(fizzbuzz(num)).to eq num
      end
    end
  end

  describe "'not an integer' when Float" do
    (0.1..1).step(0.3) do |num|
      it "'not an integer' when #{num.round(1)}" do
        expect(fizzbuzz(num)).to eq 'not an integer'
      end
    end
  end

  describe "'not an integer' when String" do
    strs = ['Hello, Macey!', 'Thank you, this looks cool.', ':P']
    strs.each do |str|
      it "'not an integer' when #{str.upcase}" do
        expect(fizzbuzz(str)).to eq 'not an integer'
      end
    end
  end
end
