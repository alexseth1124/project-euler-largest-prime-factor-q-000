class LargestPrimeFactor

  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def number
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
end