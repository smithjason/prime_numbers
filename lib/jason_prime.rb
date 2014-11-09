class JasonPrime
  def primes_to_upper_limit(upper_limit=100)
    return nil if upper_limit < 2
    return [2] if upper_limit == 2
    return [2,3] if upper_limit == 3

    optimized_integers = optimize_integer_array((2..upper_limit).to_a)
    primes_in_integer_array(optimized_integers)
  end

  def primes_to_nth_prime(n)
    return nil if n < 1
    return [2] if n == 1
    return [2,3] if n == 2

    prime_numbers = [2,3]
    potential_prime = prime_numbers.last

    while prime_numbers.length < n
      potential_prime += 2
      prime = true

      prime_numbers.each do |prime_number|
        prime = false if potential_prime % prime_number == 0
        break if !prime
      end

      prime_numbers << potential_prime if prime
    end

    prime_numbers
  end

  private

  def primes_in_integer_array(integer_array)
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
