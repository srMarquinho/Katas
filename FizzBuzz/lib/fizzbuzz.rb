def fizzbuzz(number)
  if number.is_a? Integer
    if number == 0
      number
    elsif number % 15 == 0
      'FizzBuzz'
    elsif number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    else
      number
    end
  else
    'not an integer'
  end
end
