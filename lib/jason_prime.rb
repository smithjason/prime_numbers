class JasonPrime
  def up_to(upper_limit=100)
    return nil if upper_limit < 2
    integers_up_to_limit = (3..upper_limit).to_a
    integers_up_to_limit.select!{ |num| num.odd? }.unshift(2)
    primes!(integers_up_to_limit)
  end

  private

  def primes!(integer_array)
    divisor_index = 0
    while Math.sqrt(integer_array.last) >= integer_array[divisor_index]
      prime_number_divisor = integer_array[divisor_index]
      integer_array.select! do |integer|
        integer % prime_number_divisor != 0 or integer == prime_number_divisor
      end
      divisor_index += 1
    end
    integer_array
  end
end
