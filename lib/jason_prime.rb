class JasonPrime
  def up_to(upper_limit=100)
    return nil if upper_limit < 2
    optimized_integers = optimize_integer_array((2..upper_limit).to_a)
    primes(optimized_integers)
  end

  private

  def primes(integer_array)
    divisor_index = 0
    while integer_less_than_square_root_of_limit(integer_array[divisor_index], integer_array.last)
      prime_number_divisor = integer_array[divisor_index]
      integer_array.select! do |integer|
        integer % prime_number_divisor != 0 or integer == prime_number_divisor
      end
      divisor_index += 1
    end
    integer_array
  end

  def optimize_integer_array(integer_array)
    integer_array.select!{ |num| num.odd? or num == 2}
  end

  def integer_less_than_square_root_of_limit(integer, upper_limit)
    Math.sqrt(upper_limit) >= integer
  end
end
