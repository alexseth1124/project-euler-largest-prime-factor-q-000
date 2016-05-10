def largest_prime_factor(value)
  (2..value).each do |x|
    if value % x == 0 && prime?(value / x)
      return (value / x)
      break
    else
      x += 1
    end
  end
end

def prime?(number)
  !(2..number/2.to_i).any? {|x| number % x == 0}
end

# Operate on a range from 2 to the value.
# If x (a number in the range) is divisible by the value, it's a factor.
# If (value / x) is prime, that has to be the largest prime number 
# if you're going from smallest to largest with x.
# If it's not, keep going.
