class JasonPrime
  def initialize
  end

  # # returns prime numbers up to the the provided upper_limit
  def up_to(upper_limit=100)
    potential_prime = 2
    prime_numbers = [potential_prime]

    while potential_prime < upper_limit
      potential_prime += 1

      prime_numbers.each do |prime|
        print "Potential Prime: #{potential_prime} - Current Prime: #{prime}"
        print " - Current Prime Numbers: #{prime_numbers.inspect}"
        puts
        if potential_prime % prime == 0
          break
        else
          prime_numbers << potential_prime if !prime_numbers.include?(potential_prime)
        end
      end
    end

    prime_numbers
  end

  # # returns the first n prime numbers
  # def generate(n)

  # end
end
