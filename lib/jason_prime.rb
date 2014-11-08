class JasonPrime
  def up_to(upper_limit=100)
    return nil if upper_limit < 2

    integers_up_to_limit = (2..upper_limit).to_a
    divisor_index = 0

    while Math.sqrt(integers_up_to_limit.last) >= integers_up_to_limit[divisor_index]
      prime_number_divisor = integers_up_to_limit[divisor_index]
      integers_up_to_limit.select! do |integer|
        integer % prime_number_divisor != 0 or integer == prime_number_divisor
      end
      divisor_index += 1
    end

    integers_up_to_limit
  end
end
