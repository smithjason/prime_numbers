class JasonPrime
  @@BASE_PRIMES = [2,3]

  def primes_to_upper_limit(upper_limit=100)
    return nil if upper_limit < 2
    return @@BASE_PRIMES.take_while { |prime| prime <= upper_limit } if upper_limit <= 3

    optimized_integers = optimize_integer_array((2..upper_limit).to_a)
    primes_in_integer_array(optimized_integers)
  end

  def primes_to_nth_prime(nth_prime)
    return nil if nth_prime < 1
    return @@BASE_PRIMES.take(nth_prime) if nth_prime <= 2

    prime_numbers = @@BASE_PRIMES.dup
    potential_prime = prime_numbers.last

    while prime_numbers.length < nth_prime
      potential_prime += 2
      prime = true

      prime_numbers.each do |prime_number|
        break if integer_is_less_than_or_equal_to_square_root_of_limit?(potential_prime, prime_number)
        prime = false if is_composite_integer?(potential_prime, prime_number)
        break if !prime
      end

      prime_numbers << potential_prime if prime
    end

    prime_numbers
  end

  private

  def primes_in_integer_array(integer_array)
    divisor_index = 0

    while integer_is_less_than_or_equal_to_square_root_of_limit?(integer_array[divisor_index], integer_array.last)
      prime_number_divisor = integer_array[divisor_index]

      integer_array.select! do |integer|
        !is_composite_integer?(integer, prime_number_divisor) or integer == prime_number_divisor
      end

      divisor_index += 1
    end

    integer_array
  end

  def is_composite_integer?(integer, divisor)
    integer % divisor == 0
  end

  def optimize_integer_array(integer_array)
    integer_array.select!{ |num| num.odd? or num == 2}
  end

  def integer_is_less_than_or_equal_to_square_root_of_limit?(integer, limit)
    Math.sqrt(limit) >= integer
  end
end
